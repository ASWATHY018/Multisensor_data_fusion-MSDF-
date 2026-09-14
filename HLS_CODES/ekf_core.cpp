// ============================================================================
//  ekf_core.cpp  -  MSDF fixed-point EKF batch engine  (v2, burst + pipelined)
// ----------------------------------------------------------------------------
//  Same math as v1 (grades against the same expected.csv). The differences are
//  scheduling: local partitioned matrices, unrolled reductions, pipelined
//  matmuls, and clean burst read/write of each track's contiguous float block.
//
//  Pragmas are a resource-safe STARTING point, not the final tune. After you
//  read the next synth report we adjust unroll/pipeline factors to trade the
//  remaining latency against DSP usage (you have huge DSP headroom on ZU9EG).
// ============================================================================
#include "ekf_core.hpp"

// ---- dense helpers, inlined so array partitioning propagates ---------------
static void matmul(const data_t A[N][N], const data_t B[N][N], data_t C[N][N]) {
#pragma HLS INLINE
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++) {
#pragma HLS PIPELINE II=1
            data_t acc = 0;
            for (int k = 0; k < N; k++) {
#pragma HLS UNROLL
                acc += A[i][k] * B[k][j];
            }
            C[i][j] = acc;
        }
}
static void transpose(const data_t A[N][N], data_t At[N][N]) {
#pragma HLS INLINE
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++) {
#pragma HLS UNROLL
            At[j][i] = A[i][j];
        }
}

static void build_FQ(data_t F[N][N], data_t Q[N][N]) {
#pragma HLS INLINE
    const data_t dt = (data_t)DT_CONST;
    const data_t q  = (data_t)Q_SPECTRAL;
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++) { F[i][j]=(i==j)?(data_t)1:(data_t)0; Q[i][j]=0; }
    F[0][3]=dt; F[1][4]=dt; F[2][5]=dt;
    const data_t q3=q*dt*dt*dt/(data_t)3, q2=q*dt*dt/(data_t)2, q1=q*dt;
    for (int i = 0; i < 3; i++) { Q[i][i]=q3; Q[i][i+3]=q2; Q[i+3][i]=q2; Q[i+3][i+3]=q1; }
}

// ---- predict:  x <- F x ,  P <- F P F^T + Q ,  symmetrize ------------------
static void predict(data_t x[N], data_t P[N][N]) {
#pragma HLS INLINE
    data_t F[N][N], Q[N][N];
#pragma HLS ARRAY_PARTITION variable=F complete dim=0
#pragma HLS ARRAY_PARTITION variable=Q complete dim=0
    build_FQ(F, Q);

    data_t xp[N];
#pragma HLS ARRAY_PARTITION variable=xp complete
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
        data_t acc = 0;
        for (int k = 0; k < N; k++) { acc += F[i][k]*x[k]; }
        xp[i] = acc;
    }
    for (int i = 0; i < N; i++) x[i] = xp[i];

    data_t FP[N][N], Ft[N][N], FPFt[N][N];
#pragma HLS ARRAY_PARTITION variable=FP   complete dim=0
#pragma HLS ARRAY_PARTITION variable=Ft   complete dim=0
#pragma HLS ARRAY_PARTITION variable=FPFt complete dim=0
    matmul(F, P, FP);
    transpose(F, Ft);
    matmul(FP, Ft, FPFt);
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++) P[i][j] = FPFt[i][j] + Q[i][j];
    for (int i = 0; i < N; i++)
        for (int j = i+1; j < N; j++) {
#pragma HLS UNROLL
            data_t m = (P[i][j] + P[j][i]) * (data_t)0.5;
            P[i][j] = m; P[j][i] = m;
        }
}

// ---- one scalar Joseph update (no matrix inverse) --------------------------
static void update_scalar(data_t x[N], data_t P[N][N],
                          const data_t H[N], data_t y, data_t r) {
#pragma HLS INLINE
    data_t Ph[N];
#pragma HLS ARRAY_PARTITION variable=Ph complete
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
        data_t acc = 0;
        for (int k = 0; k < N; k++) { acc += P[i][k]*H[k]; }
        Ph[i] = acc;
    }
    data_t s = r;
    for (int i = 0; i < N; i++) s += H[i]*Ph[i];

    data_t K[N];
#pragma HLS ARRAY_PARTITION variable=K complete
    data_t inv_s = (data_t)1 / s;                 // one reciprocal, reused
    for (int i = 0; i < N; i++) K[i] = Ph[i]*inv_s;
    for (int i = 0; i < N; i++) x[i] += K[i]*y;

    data_t A[N][N], AP[N][N], At[N][N], APAt[N][N];
#pragma HLS ARRAY_PARTITION variable=A    complete dim=0
#pragma HLS ARRAY_PARTITION variable=AP   complete dim=0
#pragma HLS ARRAY_PARTITION variable=At   complete dim=0
#pragma HLS ARRAY_PARTITION variable=APAt complete dim=0
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++) {
#pragma HLS UNROLL
            A[i][j] = ((i==j)?(data_t)1:(data_t)0) - K[i]*H[j];
        }
    matmul(A, P, AP);
    transpose(A, At);
    matmul(AP, At, APAt);
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++) P[i][j] = APAt[i][j] + r*K[i]*K[j];
    for (int i = 0; i < N; i++)
        for (int j = i+1; j < N; j++) {
#pragma HLS UNROLL
            data_t m = (P[i][j] + P[j][i]) * (data_t)0.5;
            P[i][j] = m; P[j][i] = m;
        }
}

// ---- top level -------------------------------------------------------------
void ekf_batch(data_t *data, const int *nmeas, int num_tracks) {
#pragma HLS INTERFACE m_axi     port=data       offset=slave bundle=gmem0 depth=9800
#pragma HLS INTERFACE m_axi     port=nmeas      offset=slave bundle=gmem1 depth=100
#pragma HLS INTERFACE s_axilite port=data       bundle=control
#pragma HLS INTERFACE s_axilite port=nmeas      bundle=control
#pragma HLS INTERFACE s_axilite port=num_tracks bundle=control
#pragma HLS INTERFACE s_axilite port=return     bundle=control

    // Outer loop steps by LANES; the inner loop is UNROLLed so LANES tracks
    // are processed by LANES parallel datapaths (tracks are independent).
    for (int t0 = 0; t0 < num_tracks; t0 += LANES) {
        for (int l = 0; l < LANES; l++) {
#pragma HLS UNROLL
            int t = t0 + l;
            if (t >= num_tracks) continue;
            int base = t * TRK_STRIDE;

            // ---- burst-read this track's contiguous float block ----
            data_t local[TRK_STRIDE];
#pragma HLS ARRAY_PARTITION variable=local cyclic factor=8
            for (int i = 0; i < TRK_STRIDE; i++) {
#pragma HLS PIPELINE II=1
                local[i] = data[base + i];
            }

            // ---- unpack into partitioned working state ----
            data_t x[N], P[N][N];
#pragma HLS ARRAY_PARTITION variable=x complete
#pragma HLS ARRAY_PARTITION variable=P complete dim=0
            for (int i = 0; i < N; i++)   x[i] = local[OFF_X + i];
            for (int i = 0; i < N; i++)
                for (int j = 0; j < N; j++) P[i][j] = local[OFF_P + i*N + j];

            // ---- EKF: predict then sequential scalar updates ----
            predict(x, P);
            int m = nmeas[t]; if (m > MAXM) m = MAXM;
            for (int k = 0; k < m; k++) {
                int mb = OFF_M + k*MROW;
                data_t H[N];
#pragma HLS ARRAY_PARTITION variable=H complete
                for (int i = 0; i < N; i++) H[i] = local[mb + i];
                update_scalar(x, P, H, local[mb + N], local[mb + N + 1]);
            }

            // ---- pack posterior back and burst-write ----
            for (int i = 0; i < N; i++)   local[OFF_X + i] = x[i];
            for (int i = 0; i < N; i++)
                for (int j = 0; j < N; j++) local[OFF_P + i*N + j] = P[i][j];
            for (int i = 0; i < TRK_STRIDE; i++) {
#pragma HLS PIPELINE II=1
                data[base + i] = local[i];
            }
        }
    }
}
