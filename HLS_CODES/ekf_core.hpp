// ============================================================================
//  ekf_core.hpp  -  Fixed-point EKF batch engine for the MSDF PL fabric  (v2)
// ----------------------------------------------------------------------------
//  v2 changes vs v1 (all about THROUGHPUT, not math):
//    * Flat float m_axi buffer instead of a mixed-type struct  -> bursts cleanly
//      (v1's struct triggered "Unsupported access data type" burst FAIL).
//    * nmeas moved to its own int* port (int arrays burst fine).
//    * Per-track data is burst-read into a local array, processed with
//      partitioned local matrices, then burst-written back.
//  The algorithm (predict -> sequential scalar Joseph update) is IDENTICAL,
//  so the same stimulus.csv / expected.csv still grade it.
//
//  Flat per-track layout in `data` (all data_t), stride = TRK_STRIDE:
//      [ x(6) | P(36 row-major) | MAXM rows of (H[6], y, r) ]
//  Output posterior x,P is written back into the same x/P slots.
//
//  Numeric-type ladder:  -DEKF_DOUBLE (exact check) | default float | -DEKF_FIXED
// ============================================================================
#ifndef EKF_CORE_HPP
#define EKF_CORE_HPP

#define N       6                       // state dimension
#define MAXM    7                       // radar3 + IRST2 + RWR2
#define NTRACKS 100                     // tracks per invocation (one wave)
#define MROW    (N + 2)                 // per measurement row: H[6], y, r  = 8

#define OFF_X   0
#define OFF_P   (N)                     // = 6
#define OFF_M   (N + N*N)               // = 42
#define TRK_STRIDE (N + N*N + MAXM*MROW)// = 98 floats per track

#define DT_CONST    0.1                 // epoch [s]  (matches export_vectors.py)
#define Q_SPECTRAL  40.0                // process-noise spectral density

// Track-level parallelism: process LANES independent tracks concurrently.
// Each lane replicates the datapath (~60 DSP/lane) - spend spare DSP for speed.
// 4 -> ~10% DSP, ~0.8 ms/100 trk;  8 -> ~19% DSP, ~0.4 ms/100 trk.
#define LANES 1

#if defined(EKF_FIXED)
  #include "ap_fixed.h"
  // TODO(Stage C): split into per-matrix word-lengths from range analysis.
  typedef ap_fixed<32,16> data_t;
#elif defined(EKF_DOUBLE)
  typedef double data_t;
#else
  typedef float data_t;
#endif

// Top-level accelerator entry point.
//   data       : NTRACKS * TRK_STRIDE flat buffer (inout), in DDR on hardware
//   nmeas      : NTRACKS valid-measurement counts (<= MAXM)
//   num_tracks : how many tracks to process this call
void ekf_batch(data_t *data, const int *nmeas, int num_tracks);

#endif // EKF_CORE_HPP
