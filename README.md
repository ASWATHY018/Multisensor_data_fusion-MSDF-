# MSDF Engine — FPGA Multi-Sensor Data Fusion (ZCU102)

From a Python golden model to a verified, 100-target trusted air picture running on the **ZCU102** and streaming live to an operator display — a complete sensor fusion pipeline built and verified on real hardware.

---

## 📊 Build Summary

| Device | Targets | Position Accuracy | Fusion Rate | Status |
|---|---|---|---|---|
| ZCU102 (XCZU9EG) | 100 tracked | ~20–26 m | 100 Hz epoch | ✅ Verified on HW |

---

## 🎯 The Goal

Take partial, noisy detections from multiple airborne sensors — **Radar** (range, azimuth, elevation), **IRST** (sharp angles), and **RWR** (coarse angles) — and fuse them into a single trusted air picture: tracks accurate enough to be weapons-quality.

- Heavy Kalman-filter math runs in the **FPGA fabric (PL)**
- Track management runs on the **ARM cores (PS)**
- Fused result streams over **Ethernet** to a live display
- Verdict target: fused accuracy must be **proven tighter than any single sensor alone**

---

## ✅ Verdict

**The fused air picture beats every single sensor, on real silicon — the project's core claim, met.**

---

## 🧩 How We Got There

The build followed a deliberate ladder: prove the algorithm, then port it to the fabric, then wrap it in the system — validating each rung before climbing.

### 1. Golden Model *(Python)*
Built a double-precision reference of the whole pipeline — sensor models, EKF, fused-vs-truth metrics. Proved fusion works: single-target fused RMSE 19 m vs radar-alone 145 m; at 100 targets, fused beat every single sensor. This became the definition of "correct" for everything downstream.
- ✔ Algorithm + fusion benefit proven

### 2. HW/SW Partition & a Key Call *(Design)*
PL gets the dense EKF math; PS gets the branchy, I/O-bound work. Chose a **sequential-scalar Joseph-form** update — mathematically identical to a batched filter but needing **no matrix inversion** (the thing that wrecks fixed-point). A word-length study then showed **float actually beat fixed-point** here at equal/less cost, so the core is single-precision float.
- ✔ Partition fixed, no-inversion float EKF

### 3. EKF Core in HLS *(Vitis HLS)*
Wrote `ekf_batch()` in C++, verified bit-for-bit against the golden vectors (C-sim PASS), then optimized (burst m_axi, array partition, pipeline). Synthesis: timing met at 100 MHz (7.3 ns), ~60 DSP (~1% of the chip), ~4.5 ms for 100 tracks — well inside the 10 ms epoch.
- ✔ Verified EKF IP, timing + resources healthy

### 4. Vivado Integration *(Vivado)*
Block design: Zynq MPSoC + the EKF IP, control on an HPM port, data on an HP port (the IP masters its own DDR access — no separate DMA core). Closed timing, generated the bitstream and XSA.
- ✔ Bitstream built, hardware handed off

### 5. Smoke Test on Silicon *(Hardware)*
Loaded the exact golden 100-track batch into DDR, ran the IP, compared to the expected outputs: `max|dx| = 7.8 mm` — the fabric reproduces the golden model. The whole PL chain (bitstream, IP, AXI, DDR, cache) verified.
- ✔ PL EKF proven correct on hardware

### 6. PS Linearization & Loop *(Vitis / A53)*
Wrote `sensor_models.c` — the float H/h/y/R per sensor (the "E" of the EKF). Ran a full multi-epoch scenario through the board: fused RMSE 14 m, matching the software reference. PS→PL→PS pipeline verified end-to-end.
- ✔ Linearization + loop correct on hardware

### 7. Multi-Target Tracker & 100 Targets *(Track Mgr)*
Added gating, nearest-neighbor association, CMKF birth, and M-of-N confirmation. Fixed the two classic MTT traps — **angle-only ghosts** (radar-anchored confirmation) and a **fine-sensor gate too tight** (gate inflation). Scaled to 100 targets with the IP run in waves of 100: 98% target hold, 26 m RMSE.
- ✔ 100-target tracking verified on hardware

### 8. Track-Quality Gate *(Track Mgr)*
Residual false tracks in the dense scene were filtered from the *displayed* picture with a quality gate (consistent radar hits) — the standard operational approach — cutting false tracks ~62% while keeping ~98% target hold, tracker untouched.
- ✔ Clean air picture, verified tracker intact

### 9. Networking + GUI *(lwIP / Ethernet)*
Brought up lwIP on the A53 (GIC + TTC, GEM3 at 1 Gbps), packed the quality tracks into a UDP air-picture packet, and streamed them at 10 Hz to a Python tactical display — range rings, IFF colors, velocity leaders, track IDs. Fused tracks now move live on a screen.
- ✔ Live all-around air picture on the operator display

### 10. On-Hardware Verification *(Verify)*
Captured the board's live air picture over the network and scored every fused track against truth: position, range, azimuth, elevation, and velocity RMSE — confirming the fused output beats every single sensor. Statistical proof, from real silicon.
- ✔ Fused-vs-truth verified · PASS

---

## 🔑 The Decisions That Mattered

- **Golden model first.** Every hardware stage was graded against a trusted Python reference, so bugs were caught in seconds, not in silicon.
- **No matrix inversion.** The sequential-scalar Joseph update replaced the fragile S⁻¹ with a single scalar divide — numerically safe and fabric-friendly.
- **Float over fixed-point.** A word-length study showed fixed-point needed ~48 bits to match float's accuracy here — more resource, more fragile — so float won.
- **Radar is the anchor.** Only radar (the one range-bearing sensor) confirms and sustains a track; angle-only sensors refine. This killed wrong-range ghost tracks.
- **Filter false tracks at the display, not the filter.** A track-quality output gate cleaned the picture without touching the verified tracker — standard practice.

---

## 📐 Verified Specifications

| Item | Value |
|---|---|
| Platform | ZCU102 — Zynq UltraScale+ MPSoC (XCZU9EG) |
| Sensors fused | Radar (r, az, el) · IRST (az, el) · RWR (az, el) |
| Targets tracked | Up to 100 simultaneous |
| Fusion filter | EKF, sequential-scalar Joseph, no inversion |
| Numeric format | Single-precision float |
| Fusion epoch | 10 ms (100 Hz) |
| EKF processing time | ~4.5 ms / 100 tracks (within epoch) |
| PL timing | Met at 100 MHz (7.3 ns est.) |
| FPGA resources | ~60 DSP (~1%), small BRAM/LUT |
| Position RMSE | ~20–26 m steady-state |
| Range / Azimuth / Elevation RMSE | 8.9 m / 0.03° / 0.04° |
| Target hold rate | ~95–98% |
| Fused vs single sensor | 3.7× tighter than radar; 100×+ vs angle-only |
| Output | UDP air picture → tactical GUI @ 10 Hz |

---

## 🚀 What's Left (Optional Next Steps)

- **IFF friend/foe labeling** — tracks currently display as UNKNOWN; correlating IFF replies gives the friend/hostile colors (Stage E).
- **Live sensor input (D2)** — the board is fed by a canned scenario today; swapping it for live UDP sensor detections closes the loop with a real simulator.
- **IMM for velocity / maneuvers** — the constant-velocity filter tracks position superbly but is looser on velocity through turns; an interacting-multiple-model bank tightens that if needed.
- **K26 deployment** — the design fits the smaller Kria K26 SOM for a discrete production node.

---

## 🛠️ Repository Structure

| Folder / File | Description |
|---|---|
| `EKF` | Kalman filter core (algorithm + HLS implementation) |
| `HLS_CODES` | Vitis HLS source for the EKF IP |
| `Packages` | Supporting packages/libraries |
| `export` | Exported design/hardware artifacts |
| `gui_codes` | Python tactical GUI / operator display code |
| `msdf_2zcu` | ZCU102-targeted MSDF implementation |
| `msdf_2zcu_iff` | ZCU102 implementation with IFF integration |
| `ws_zcu` | Workspace for ZCU102 embedded (Vitis) application |
| `Msdf_golden.py` / `Msdf_golden_100.py` | Python golden reference model |
| `ekf_core.cpp` / `ekf_core.hpp` | EKF core C++ implementation |
| `ekf_tb.cpp` | EKF testbench |
| `expected.csv` | Golden model expected outputs for HW verification |

---

## 🛠️ Tools Used

- Xilinx Vitis HLS
- Xilinx Vivado
- Python (NumPy — golden model & GUI)
- C / C++ (embedded application, EKF core)
- lwIP (networking stack on A53)

---

*MSDF Engine build summary — ZCU102 prototype. Accuracy figures are from on-hardware capture scored against truth; steady-state (post-convergence) values. Position/range/angle are weapons-quality; velocity is constant-velocity-limited.*
