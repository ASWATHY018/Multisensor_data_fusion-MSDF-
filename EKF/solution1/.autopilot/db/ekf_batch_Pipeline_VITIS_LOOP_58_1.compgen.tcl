# This script segment is generated automatically by AutoPilot

set name ekf_batch_fadd_32ns_32ns_32_4_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name ekf_batch_fmul_32ns_32ns_32_3_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name F_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_reload \
    op interface \
    ports { F_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name F_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_5_reload \
    op interface \
    ports { F_5_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name F_10_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_10_reload \
    op interface \
    ports { F_10_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name F_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_15_reload \
    op interface \
    ports { F_15_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name F_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_21_reload \
    op interface \
    ports { F_21_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name F_27_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_27_reload \
    op interface \
    ports { F_27_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name x_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_reload \
    op interface \
    ports { x_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name F_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_1_reload \
    op interface \
    ports { F_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name F_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_6_reload \
    op interface \
    ports { F_6_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name F_11_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_11_reload \
    op interface \
    ports { F_11_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name F_16_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_16_reload \
    op interface \
    ports { F_16_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name F_22_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_22_reload \
    op interface \
    ports { F_22_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name F_28_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_28_reload \
    op interface \
    ports { F_28_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name x_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_1_reload \
    op interface \
    ports { x_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name F_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_2_reload \
    op interface \
    ports { F_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name F_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_7_reload \
    op interface \
    ports { F_7_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name F_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_12_reload \
    op interface \
    ports { F_12_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name F_17_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_17_reload \
    op interface \
    ports { F_17_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name F_23_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_23_reload \
    op interface \
    ports { F_23_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name F_29_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_29_reload \
    op interface \
    ports { F_29_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name x_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_2_reload \
    op interface \
    ports { x_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name F_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_8_reload \
    op interface \
    ports { F_8_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name F_13_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_13_reload \
    op interface \
    ports { F_13_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name F_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_18_reload \
    op interface \
    ports { F_18_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name F_24_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_24_reload \
    op interface \
    ports { F_24_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name F_30_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_30_reload \
    op interface \
    ports { F_30_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name x_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_3_reload \
    op interface \
    ports { x_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name F_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_3_reload \
    op interface \
    ports { F_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name F_14_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_14_reload \
    op interface \
    ports { F_14_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name F_19_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_19_reload \
    op interface \
    ports { F_19_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name F_25_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_25_reload \
    op interface \
    ports { F_25_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name F_31_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_31_reload \
    op interface \
    ports { F_31_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name x_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_4_reload \
    op interface \
    ports { x_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name F_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_4_reload \
    op interface \
    ports { F_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name F_9_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_9_reload \
    op interface \
    ports { F_9_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name F_20_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_20_reload \
    op interface \
    ports { F_20_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name F_26_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_26_reload \
    op interface \
    ports { F_26_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name F_32_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_F_32_reload \
    op interface \
    ports { F_32_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name x_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_5_reload \
    op interface \
    ports { x_5_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name xp_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xp_5_out \
    op interface \
    ports { xp_5_out { O 32 vector } xp_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name xp_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xp_4_out \
    op interface \
    ports { xp_4_out { O 32 vector } xp_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name xp_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xp_3_out \
    op interface \
    ports { xp_3_out { O 32 vector } xp_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name xp_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xp_2_out \
    op interface \
    ports { xp_2_out { O 32 vector } xp_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name xp_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xp_1_out \
    op interface \
    ports { xp_1_out { O 32 vector } xp_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name xp_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xp_out \
    op interface \
    ports { xp_out { O 32 vector } xp_out_ap_vld { O 1 bit } } \
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


