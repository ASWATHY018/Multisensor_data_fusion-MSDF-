############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project EKF
set_top ekf_batch
add_files ekf_core.cpp
add_files ekf_core.hpp
add_files -tb ekf_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu9eg-ffvb1156-2-e}
create_clock -period 10 -name default
config_export -output D:/MSDF_2_ZCU
#source "./EKF/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output D:/MSDF_2_ZCU
