// ============================================================================
//  ekf_tb.cpp  -  C-simulation testbench for the MSDF EKF core  (v2 interface)
// ----------------------------------------------------------------------------
//  Packs stimulus.csv into the flat float buffer + nmeas array that ekf_batch()
//  now takes, runs it, and compares the posterior x/P against expected.csv.
//  CSV format is unchanged from v1 (see FORMAT.txt).
//
//  Native build (exact logic check):
//      g++ -DEKF_DOUBLE -O2 ekf_core.cpp ekf_tb.cpp -o ekf_tb && ./ekf_tb
//  Float baseline (HLS default type):
//      g++          -O2 ekf_core.cpp ekf_tb.cpp -o ekf_tb && ./ekf_tb
// ============================================================================
#include "ekf_core.hpp"
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>
#include <string>
#include <fstream>
#include <sstream>

static std::vector<std::vector<double>> load_csv(const char *path) {
    std::vector<std::vector<double>> rows;
    std::ifstream f(path);
    if (!f) { std::fprintf(stderr, "ERROR: cannot open %s\n", path); std::exit(2); }
    std::string line;
    while (std::getline(f, line)) {
        if (line.empty() || line[0] == '#') continue;
        std::vector<double> row; std::stringstream ss(line); std::string cell;
        while (std::getline(ss, cell, ',')) if (!cell.empty()) row.push_back(std::atof(cell.c_str()));
        if (!row.empty()) rows.push_back(row);
    }
    return rows;
}

int main() {
    auto stim = load_csv("D:/MSDF_2_ZCU/stimulus.csv");
    auto exp  = load_csv("D:/MSDF_2_ZCU/expected.csv");
    int nt = (int)stim.size();
    if (nt > NTRACKS) nt = NTRACKS;
    std::printf("Loaded %d stimulus rows, %d expected rows\n", (int)stim.size(), (int)exp.size());

    // ---- pack into the flat buffer + nmeas array ----
    static data_t data[NTRACKS * TRK_STRIDE];
    static int    nmeas[NTRACKS];
    for (int t = 0; t < nt; t++) {
        const std::vector<double> &s = stim[t];
        int c = 1;                                  // col 0 = id
        int base = t * TRK_STRIDE;
        for (int i = 0; i < N; i++)   data[base + OFF_X + i] = (data_t)s[c++];   // x
        for (int i = 0; i < N*N; i++) data[base + OFF_P + i] = (data_t)s[c++];   // P
        nmeas[t] = (int)s[c++];                                                  // nmeas
        for (int i = 0; i < MAXM*MROW; i++) data[base + OFF_M + i] = (data_t)s[c++]; // meas
    }

    ekf_batch(data, nmeas, nt);

    // ---- compare posterior x/P to golden ----
    double max_x = 0, max_P = 0; int worst_t = -1;
    for (int t = 0; t < nt; t++) {
        const std::vector<double> &e = exp[t];
        int base = t * TRK_STRIDE, c = 1;
        for (int i = 0; i < N; i++) {
            double d = std::fabs((double)data[base + OFF_X + i] - e[c++]);
            if (d > max_x) { max_x = d; worst_t = t; }
        }
        for (int i = 0; i < N*N; i++) {
            double d = std::fabs((double)data[base + OFF_P + i] - e[c++]);
            if (d > max_P) max_P = d;
        }
    }

    double tol_x = 1e-2, tol_P = 1e-1;
#if defined(EKF_DOUBLE)
    tol_x = 1e-3; tol_P = 1e-2;
#endif
    std::printf("\n  max |dx| (state)      = %.3e   (tol %.1e)\n", max_x, tol_x);
    std::printf("  max |dP| (covariance) = %.3e   (tol %.1e)\n", max_P, tol_P);
    std::printf("  worst track index     = %d\n", worst_t);
    bool pass = (max_x < tol_x) && (max_P < tol_P);
    std::printf("\n  RESULT: %s\n", pass ? "PASS - core matches golden reference"
                                          : "FAIL - investigate");
    return pass ? 0 : 1;
}
