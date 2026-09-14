# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name Q_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Q_11_out \
    op interface \
    ports { Q_11_out { O 32 vector } Q_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name Q_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Q_10_out \
    op interface \
    ports { Q_10_out { O 32 vector } Q_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name Q_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Q_9_out \
    op interface \
    ports { Q_9_out { O 32 vector } Q_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name Q_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Q_8_out \
    op interface \
    ports { Q_8_out { O 32 vector } Q_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name Q_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Q_7_out \
    op interface \
    ports { Q_7_out { O 32 vector } Q_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name Q_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Q_6_out \
    op interface \
    ports { Q_6_out { O 32 vector } Q_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name Q_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Q_5_out \
    op interface \
    ports { Q_5_out { O 32 vector } Q_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name Q_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Q_4_out \
    op interface \
    ports { Q_4_out { O 32 vector } Q_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name Q_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Q_3_out \
    op interface \
    ports { Q_3_out { O 32 vector } Q_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name Q_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Q_2_out \
    op interface \
    ports { Q_2_out { O 32 vector } Q_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name Q_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Q_1_out \
    op interface \
    ports { Q_1_out { O 32 vector } Q_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name Q_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Q_out \
    op interface \
    ports { Q_out { O 32 vector } Q_out_ap_vld { O 1 bit } } \
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


