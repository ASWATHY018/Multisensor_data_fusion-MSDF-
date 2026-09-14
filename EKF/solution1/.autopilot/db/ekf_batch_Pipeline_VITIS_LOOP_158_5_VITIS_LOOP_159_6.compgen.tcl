# This script segment is generated automatically by AutoPilot

set id 25
set name ekf_batch_mux_8_3_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 32
set din4_signed 0
set din5_width 32
set din5_signed 0
set din6_width 32
set din6_signed 0
set din7_width 32
set din7_signed 0
set din8_width 3
set din8_signed 0
set dout_width 32
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 27 \
    name local \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local \
    op interface \
    ports { local_address0 { O 4 vector } local_ce0 { O 1 bit } local_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 28 \
    name local_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_1 \
    op interface \
    ports { local_1_address0 { O 4 vector } local_1_ce0 { O 1 bit } local_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 29 \
    name local_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_2 \
    op interface \
    ports { local_2_address0 { O 4 vector } local_2_ce0 { O 1 bit } local_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 30 \
    name local_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_3 \
    op interface \
    ports { local_3_address0 { O 4 vector } local_3_ce0 { O 1 bit } local_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 31 \
    name local_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_4 \
    op interface \
    ports { local_4_address0 { O 4 vector } local_4_ce0 { O 1 bit } local_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 32 \
    name local_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_5 \
    op interface \
    ports { local_5_address0 { O 4 vector } local_5_ce0 { O 1 bit } local_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 33 \
    name local_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_6 \
    op interface \
    ports { local_6_address0 { O 4 vector } local_6_ce0 { O 1 bit } local_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 34 \
    name local_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_7 \
    op interface \
    ports { local_7_address0 { O 4 vector } local_7_ce0 { O 1 bit } local_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name P_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_35_out \
    op interface \
    ports { P_35_out { O 32 vector } P_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name P_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_34_out \
    op interface \
    ports { P_34_out { O 32 vector } P_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name P_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_33_out \
    op interface \
    ports { P_33_out { O 32 vector } P_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name P_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_32_out \
    op interface \
    ports { P_32_out { O 32 vector } P_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name P_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_31_out \
    op interface \
    ports { P_31_out { O 32 vector } P_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name P_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_30_out \
    op interface \
    ports { P_30_out { O 32 vector } P_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name P_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_29_out \
    op interface \
    ports { P_29_out { O 32 vector } P_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name P_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_28_out \
    op interface \
    ports { P_28_out { O 32 vector } P_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name P_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_27_out \
    op interface \
    ports { P_27_out { O 32 vector } P_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name P_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_26_out \
    op interface \
    ports { P_26_out { O 32 vector } P_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name P_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_25_out \
    op interface \
    ports { P_25_out { O 32 vector } P_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name P_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_24_out \
    op interface \
    ports { P_24_out { O 32 vector } P_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name P_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_23_out \
    op interface \
    ports { P_23_out { O 32 vector } P_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name P_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_22_out \
    op interface \
    ports { P_22_out { O 32 vector } P_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name P_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_21_out \
    op interface \
    ports { P_21_out { O 32 vector } P_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name P_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_20_out \
    op interface \
    ports { P_20_out { O 32 vector } P_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name P_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_19_out \
    op interface \
    ports { P_19_out { O 32 vector } P_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name P_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_18_out \
    op interface \
    ports { P_18_out { O 32 vector } P_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name P_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_17_out \
    op interface \
    ports { P_17_out { O 32 vector } P_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name P_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_16_out \
    op interface \
    ports { P_16_out { O 32 vector } P_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name P_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_15_out \
    op interface \
    ports { P_15_out { O 32 vector } P_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name P_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_14_out \
    op interface \
    ports { P_14_out { O 32 vector } P_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name P_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_13_out \
    op interface \
    ports { P_13_out { O 32 vector } P_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name P_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_12_out \
    op interface \
    ports { P_12_out { O 32 vector } P_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name P_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_11_out \
    op interface \
    ports { P_11_out { O 32 vector } P_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name P_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_10_out \
    op interface \
    ports { P_10_out { O 32 vector } P_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name P_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_9_out \
    op interface \
    ports { P_9_out { O 32 vector } P_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name P_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_8_out \
    op interface \
    ports { P_8_out { O 32 vector } P_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name P_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_7_out \
    op interface \
    ports { P_7_out { O 32 vector } P_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name P_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_6_out \
    op interface \
    ports { P_6_out { O 32 vector } P_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name P_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_5_out \
    op interface \
    ports { P_5_out { O 32 vector } P_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name P_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_4_out \
    op interface \
    ports { P_4_out { O 32 vector } P_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name P_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_3_out \
    op interface \
    ports { P_3_out { O 32 vector } P_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name P_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_2_out \
    op interface \
    ports { P_2_out { O 32 vector } P_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name P_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_1_out \
    op interface \
    ports { P_1_out { O 32 vector } P_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name P_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P_out \
    op interface \
    ports { P_out { O 32 vector } P_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName ekf_batch_flow_control_loop_pipe_sequential_init_U
set CompName ekf_batch_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix ekf_batch_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


