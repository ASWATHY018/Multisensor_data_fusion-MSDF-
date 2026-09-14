# 1 "ekf_core.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 396 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Xilinx/Vitis_HLS/2023.1/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
# 108 "C:/Xilinx/Vitis_HLS/2023.1/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
extern "C" {






    void _ssdm_op_IfRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_ReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Read(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_WriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Write(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_PrintNone(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintInt(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintDouble(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Return(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_Unroll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_Inline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecStable(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecStableContent(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBindPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipoDepth(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_DataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void __xilinx_ip_top(...) __attribute__ ((nothrow)) __attribute__((overloadable));


}
# 2 "<built-in>" 2
# 1 "ekf_core.cpp" 2
# 12 "ekf_core.cpp"
# 1 "./ekf_core.hpp" 1
# 47 "./ekf_core.hpp"
  typedef float data_t;






__attribute__((sdx_kernel("ekf_batch", 0))) void ekf_batch(data_t *data, const int *nmeas, int num_tracks);
# 13 "ekf_core.cpp" 2


static void matmul(const data_t A[6][6], const data_t B[6][6], data_t C[6][6]) {
#pragma HLS INLINE
 VITIS_LOOP_17_1: for (int i = 0; i < 6; i++)
        VITIS_LOOP_18_2: for (int j = 0; j < 6; j++) {
#pragma HLS PIPELINE II=1
 data_t acc = 0;
            VITIS_LOOP_21_3: for (int k = 0; k < 6; k++) {
#pragma HLS UNROLL
 acc += A[i][k] * B[k][j];
            }
            C[i][j] = acc;
        }
}
static void transpose(const data_t A[6][6], data_t At[6][6]) {
#pragma HLS INLINE
 VITIS_LOOP_30_1: for (int i = 0; i < 6; i++)
        VITIS_LOOP_31_2: for (int j = 0; j < 6; j++) {
#pragma HLS UNROLL
 At[j][i] = A[i][j];
        }
}

static void build_FQ(data_t F[6][6], data_t Q[6][6]) {
#pragma HLS INLINE
 const data_t dt = (data_t)0.1;
    const data_t q = (data_t)40.0;
    VITIS_LOOP_41_1: for (int i = 0; i < 6; i++)
        VITIS_LOOP_42_2: for (int j = 0; j < 6; j++) { F[i][j]=(i==j)?(data_t)1:(data_t)0; Q[i][j]=0; }
    F[0][3]=dt; F[1][4]=dt; F[2][5]=dt;
    const data_t q3=q*dt*dt*dt/(data_t)3, q2=q*dt*dt/(data_t)2, q1=q*dt;
    VITIS_LOOP_45_3: for (int i = 0; i < 3; i++) { Q[i][i]=q3; Q[i][i+3]=q2; Q[i+3][i]=q2; Q[i+3][i+3]=q1; }
}


static void predict(data_t x[6], data_t P[6][6]) {
#pragma HLS INLINE
 data_t F[6][6], Q[6][6];
#pragma HLS ARRAY_PARTITION variable=F complete dim=0
#pragma HLS ARRAY_PARTITION variable=Q complete dim=0
 build_FQ(F, Q);

    data_t xp[6];
#pragma HLS ARRAY_PARTITION variable=xp complete
 VITIS_LOOP_58_1: for (int i = 0; i < 6; i++) {
#pragma HLS PIPELINE II=1
 data_t acc = 0;
        VITIS_LOOP_61_2: for (int k = 0; k < 6; k++) { acc += F[i][k]*x[k]; }
        xp[i] = acc;
    }
    VITIS_LOOP_64_3: for (int i = 0; i < 6; i++) x[i] = xp[i];

    data_t FP[6][6], Ft[6][6], FPFt[6][6];
#pragma HLS ARRAY_PARTITION variable=FP complete dim=0
#pragma HLS ARRAY_PARTITION variable=Ft complete dim=0
#pragma HLS ARRAY_PARTITION variable=FPFt complete dim=0
 matmul(F, P, FP);
    transpose(F, Ft);
    matmul(FP, Ft, FPFt);
    VITIS_LOOP_73_4: for (int i = 0; i < 6; i++)
        VITIS_LOOP_74_5: for (int j = 0; j < 6; j++) P[i][j] = FPFt[i][j] + Q[i][j];
    VITIS_LOOP_75_6: for (int i = 0; i < 6; i++)
        VITIS_LOOP_76_7: for (int j = i+1; j < 6; j++) {
#pragma HLS UNROLL
 data_t m = (P[i][j] + P[j][i]) * (data_t)0.5;
            P[i][j] = m; P[j][i] = m;
        }
}


static void update_scalar(data_t x[6], data_t P[6][6],
                          const data_t H[6], data_t y, data_t r) {
#pragma HLS INLINE
 data_t Ph[6];
#pragma HLS ARRAY_PARTITION variable=Ph complete
 VITIS_LOOP_89_1: for (int i = 0; i < 6; i++) {
#pragma HLS PIPELINE II=1
 data_t acc = 0;
        VITIS_LOOP_92_2: for (int k = 0; k < 6; k++) { acc += P[i][k]*H[k]; }
        Ph[i] = acc;
    }
    data_t s = r;
    VITIS_LOOP_96_3: for (int i = 0; i < 6; i++) s += H[i]*Ph[i];

    data_t K[6];
#pragma HLS ARRAY_PARTITION variable=K complete
 data_t inv_s = (data_t)1 / s;
    VITIS_LOOP_101_4: for (int i = 0; i < 6; i++) K[i] = Ph[i]*inv_s;
    VITIS_LOOP_102_5: for (int i = 0; i < 6; i++) x[i] += K[i]*y;

    data_t A[6][6], AP[6][6], At[6][6], APAt[6][6];
#pragma HLS ARRAY_PARTITION variable=A complete dim=0
#pragma HLS ARRAY_PARTITION variable=AP complete dim=0
#pragma HLS ARRAY_PARTITION variable=At complete dim=0
#pragma HLS ARRAY_PARTITION variable=APAt complete dim=0
 VITIS_LOOP_109_6: for (int i = 0; i < 6; i++)
        VITIS_LOOP_110_7: for (int j = 0; j < 6; j++) {
#pragma HLS UNROLL
 A[i][j] = ((i==j)?(data_t)1:(data_t)0) - K[i]*H[j];
        }
    matmul(A, P, AP);
    transpose(A, At);
    matmul(AP, At, APAt);
    VITIS_LOOP_117_8: for (int i = 0; i < 6; i++)
        VITIS_LOOP_118_9: for (int j = 0; j < 6; j++) P[i][j] = APAt[i][j] + r*K[i]*K[j];
    VITIS_LOOP_119_10: for (int i = 0; i < 6; i++)
        VITIS_LOOP_120_11: for (int j = i+1; j < 6; j++) {
#pragma HLS UNROLL
 data_t m = (P[i][j] + P[j][i]) * (data_t)0.5;
            P[i][j] = m; P[j][i] = m;
        }
}


__attribute__((sdx_kernel("ekf_batch", 0))) void ekf_batch(data_t *data, const int *nmeas, int num_tracks) {
#line 16 "D:/MSDF_2_ZCU/EKF/solution1/csynth.tcl"
#pragma HLSDIRECTIVE TOP name=ekf_batch
# 128 "ekf_core.cpp"

#pragma HLS INTERFACE m_axi port=data offset=slave bundle=gmem0 depth=9800
#pragma HLS INTERFACE m_axi port=nmeas offset=slave bundle=gmem1 depth=100
#pragma HLS INTERFACE s_axilite port=data bundle=control
#pragma HLS INTERFACE s_axilite port=nmeas bundle=control
#pragma HLS INTERFACE s_axilite port=num_tracks bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control



 VITIS_LOOP_138_1: for (int t0 = 0; t0 < num_tracks; t0 += 1) {
        VITIS_LOOP_139_2: for (int l = 0; l < 1; l++) {
#pragma HLS UNROLL
 int t = t0 + l;
            if (t >= num_tracks) continue;
            int base = t * (6 + 6*6 + 7*(6 + 2));


            data_t local[(6 + 6*6 + 7*(6 + 2))];
#pragma HLS ARRAY_PARTITION variable=local cyclic factor=8
 VITIS_LOOP_148_3: for (int i = 0; i < (6 + 6*6 + 7*(6 + 2)); i++) {
#pragma HLS PIPELINE II=1
 local[i] = data[base + i];
            }


            data_t x[6], P[6][6];
#pragma HLS ARRAY_PARTITION variable=x complete
#pragma HLS ARRAY_PARTITION variable=P complete dim=0
 VITIS_LOOP_157_4: for (int i = 0; i < 6; i++) x[i] = local[0 + i];
            VITIS_LOOP_158_5: for (int i = 0; i < 6; i++)
                VITIS_LOOP_159_6: for (int j = 0; j < 6; j++) P[i][j] = local[(6) + i*6 + j];


            predict(x, P);
            int m = nmeas[t]; if (m > 7) m = 7;
            VITIS_LOOP_164_7: for (int k = 0; k < m; k++) {
                int mb = (6 + 6*6) + k*(6 + 2);
                data_t H[6];
#pragma HLS ARRAY_PARTITION variable=H complete
 VITIS_LOOP_168_8: for (int i = 0; i < 6; i++) H[i] = local[mb + i];
                update_scalar(x, P, H, local[mb + 6], local[mb + 6 + 1]);
            }


            VITIS_LOOP_173_9: for (int i = 0; i < 6; i++) local[0 + i] = x[i];
            VITIS_LOOP_174_10: for (int i = 0; i < 6; i++)
                VITIS_LOOP_175_11: for (int j = 0; j < 6; j++) local[(6) + i*6 + j] = P[i][j];
            VITIS_LOOP_176_12: for (int i = 0; i < (6 + 6*6 + 7*(6 + 2)); i++) {
#pragma HLS PIPELINE II=1
 data[base + i] = local[i];
            }
        }
    }
}
