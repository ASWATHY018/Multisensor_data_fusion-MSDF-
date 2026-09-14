// ============================================================================
//  sensor_models.h  -  PS-side EKF linearization + primitives for tracking
// ----------------------------------------------------------------------------
//  Float, runs on the ARM core. Provides:
//   - the simple fixed-batch fill (sm_fill_track)  [Stages A/B]
//   - per-sensor h / H / R, predict-covariance, CMKF birth  [Stage C tracker]
//  Ported from the Python golden model.
// ============================================================================
#ifndef SENSOR_MODELS_H
#define SENSOR_MODELS_H

#define SM_N        6
#define SM_STRIDE   98
#define SM_OFF_X    0
#define SM_OFF_P    6
#define SM_OFF_M    42
#define SM_MROW     8
#define SM_NMEAS    7
#define SM_DT       0.1f

// sensor ids
#define SM_RADAR    0     // z = {range, az, el}   dim 3
#define SM_IRST     1     // z = {az, el}          dim 2
#define SM_RWR      2     // z = {az, el}          dim 2

// ---- Stage A/B simple path (all 3 sensors, fixed 7 rows) -------------------
void sm_predict_state(const float x[6], float xp[6]);
int  sm_fill_track(float trk_out[SM_STRIDE],
                   const float x[6], const float P[36],
                   const float radar_z[3], const float irst_z[2], const float rwr_z[2]);

// ---- Stage C tracker primitives --------------------------------------------
int   sm_meas_dim(int sensor);                 // 3 / 2 / 2
float sm_wrap(float a);                        // wrap angle to [-pi,pi]
void  sm_predict_cov(const float P[36], float Pp[36]);   // Pp = F P F^T + Q
void  sm_h(int sensor, const float x[6], float z[3]);    // predicted measurement
void  sm_H(int sensor, const float x[6], float H[18]);   // Jacobian rows (dim x 6), flat
void  sm_R(int sensor, float r[3]);                      // measurement variances
void  sm_residual(int sensor, const float z[3], const float hx[3], float y[3]); // wrapped
void  sm_cmkf_init(const float radar_z[3], float x0[6]); // birth: radar polar -> Cartesian

#endif // SENSOR_MODELS_H
