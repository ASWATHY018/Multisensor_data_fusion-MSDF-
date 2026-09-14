// ============================================================================
//  sensor_models.c  -  PS-side EKF linearization + tracker primitives (float)
// ============================================================================
#include "sensor_models.h"
#include <math.h>

#define DEG (3.14159265358979f/180.0f)
#define PI  3.14159265358979f

static const float R_RADAR[3] = { 20.0f*20.0f, (0.5f*DEG)*(0.5f*DEG), (0.5f*DEG)*(0.5f*DEG) };
static const float R_IRST[2]  = { (0.05f*DEG)*(0.05f*DEG), (0.05f*DEG)*(0.05f*DEG) };
static const float R_RWR[2]   = { (3.0f*DEG)*(3.0f*DEG),  (3.0f*DEG)*(3.0f*DEG) };

float sm_wrap(float a) { while (a>PI) a-=2*PI; while (a<-PI) a+=2*PI; return a; }
int   sm_meas_dim(int s) { return (s==SM_RADAR) ? 3 : 2; }

void sm_predict_state(const float x[6], float xp[6]) {
    xp[0]=x[0]+SM_DT*x[3]; xp[1]=x[1]+SM_DT*x[4]; xp[2]=x[2]+SM_DT*x[5];
    xp[3]=x[3]; xp[4]=x[4]; xp[5]=x[5];
}

// Pp = F P F^T + Q  (constant-velocity, sparse F) ; process-noise q=40
void sm_predict_cov(const float P[36], float Pp[36]) {
    const float dt=SM_DT, q=40.0f;
    float F[6][6], Q[6][6], Pm[6][6], T[6][6];
    for (int i=0;i<6;i++) for(int j=0;j<6;j++){ F[i][j]=(i==j)?1.f:0.f; Q[i][j]=0.f; Pm[i][j]=P[i*6+j]; }
    F[0][3]=dt; F[1][4]=dt; F[2][5]=dt;
    float q3=q*dt*dt*dt/3.f, q2=q*dt*dt/2.f, q1=q*dt;
    for (int i=0;i<3;i++){ Q[i][i]=q3; Q[i][i+3]=q2; Q[i+3][i]=q2; Q[i+3][i+3]=q1; }
    // T = F P
    for (int i=0;i<6;i++) for(int j=0;j<6;j++){ float a=0; for(int k=0;k<6;k++) a+=F[i][k]*Pm[k][j]; T[i][j]=a; }
    // Pp = T F^T + Q
    for (int i=0;i<6;i++) for(int j=0;j<6;j++){ float a=0; for(int k=0;k<6;k++) a+=T[i][k]*F[j][k]; Pp[i*6+j]=a+Q[i][j]; }
}

// ---- measurement models ----------------------------------------------------
void sm_h(int s, const float x[6], float z[3]) {
    float X=x[0],Y=x[1],Z=x[2];
    if (s==SM_RADAR) { z[0]=sqrtf(X*X+Y*Y+Z*Z); z[1]=atan2f(Y,X); z[2]=atan2f(Z,sqrtf(X*X+Y*Y)); }
    else             { z[0]=atan2f(Y,X);          z[1]=atan2f(Z,sqrtf(X*X+Y*Y)); }
}
void sm_H(int s, const float x[6], float H[18]) {
    float X=x[0],Y=x[1],Z=x[2];
    float r2=X*X+Y*Y+Z*Z, r=sqrtf(r2), rxy2=X*X+Y*Y, rxy=sqrtf(rxy2);
    for (int i=0;i<18;i++) H[i]=0.f;
    if (s==SM_RADAR) {
        H[0]=X/r; H[1]=Y/r; H[2]=Z/r;                         // range row
        H[6]=-Y/rxy2; H[7]=X/rxy2;                            // az row
        H[12]=-X*Z/(r2*rxy); H[13]=-Y*Z/(r2*rxy); H[14]=rxy/r2; // el row
    } else {
        H[0]=-Y/rxy2; H[1]=X/rxy2;                            // az row
        H[6]=-X*Z/(r2*rxy); H[7]=-Y*Z/(r2*rxy); H[8]=rxy/r2;  // el row
    }
}
void sm_R(int s, float r[3]) {
    if (s==SM_RADAR) { r[0]=R_RADAR[0]; r[1]=R_RADAR[1]; r[2]=R_RADAR[2]; }
    else if (s==SM_IRST) { r[0]=R_IRST[0]; r[1]=R_IRST[1]; }
    else { r[0]=R_RWR[0]; r[1]=R_RWR[1]; }
}
void sm_residual(int s, const float z[3], const float hx[3], float y[3]) {
    int dim=sm_meas_dim(s);
    for (int i=0;i<dim;i++) {
        float d=z[i]-hx[i];
        if (!(s==SM_RADAR && i==0)) d=sm_wrap(d);   // wrap all angle components
        y[i]=d;
    }
}
// birth: radar polar (range,az,el) -> Cartesian position, zero velocity
void sm_cmkf_init(const float z[3], float x0[6]) {
    float r=z[0], az=z[1], el=z[2];
    x0[0]=r*cosf(el)*cosf(az); x0[1]=r*cosf(el)*sinf(az); x0[2]=r*sinf(el);
    x0[3]=0.f; x0[4]=0.f; x0[5]=0.f;
}

// ---- Stage A/B simple path (unchanged) -------------------------------------
static void put_row(float *trk, int k, const float H[6], float y, float r) {
    float *dst = trk + SM_OFF_M + k*SM_MROW;
    for (int i=0;i<6;i++) dst[i]=H[i];
    dst[6]=y; dst[7]=r;
}
int sm_fill_track(float trk_out[SM_STRIDE], const float x[6], const float P[36],
                  const float radar_z[3], const float irst_z[2], const float rwr_z[2]) {
    for (int i=0;i<6;i++)  trk_out[SM_OFF_X+i]=x[i];
    for (int i=0;i<36;i++) trk_out[SM_OFF_P+i]=P[i];
    float xp[6]; sm_predict_state(x, xp);
    float hh[3], HH[18], yy[3], rr[3]; int k=0;
    // radar
    sm_h(SM_RADAR,xp,hh); sm_H(SM_RADAR,xp,HH); sm_residual(SM_RADAR,radar_z,hh,yy); sm_R(SM_RADAR,rr);
    for (int i=0;i<3;i++) put_row(trk_out,k++,&HH[i*6],yy[i],rr[i]);
    // irst
    sm_h(SM_IRST,xp,hh); sm_H(SM_IRST,xp,HH); sm_residual(SM_IRST,irst_z,hh,yy); sm_R(SM_IRST,rr);
    for (int i=0;i<2;i++) put_row(trk_out,k++,&HH[i*6],yy[i],rr[i]);
    // rwr
    sm_h(SM_RWR,xp,hh); sm_H(SM_RWR,xp,HH); sm_residual(SM_RWR,rwr_z,hh,yy); sm_R(SM_RWR,rr);
    for (int i=0;i<2;i++) put_row(trk_out,k++,&HH[i*6],yy[i],rr[i]);
    return k;
}
