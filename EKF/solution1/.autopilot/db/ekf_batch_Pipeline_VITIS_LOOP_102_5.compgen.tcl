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
    id 800 \
    name x_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_26 \
    op interface \
    ports { x_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 801 \
    name x_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_27 \
    op interface \
    ports { x_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 802 \
    name x_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_28 \
    op interface \
    ports { x_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 803 \
    name x_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_29 \
    op interface \
    ports { x_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 804 \
    name x_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_30 \
    op interface \
    ports { x_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 805 \
    name x_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_31 \
    op interface \
    ports { x_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 806 \
    name K_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K_reload \
    op interface \
    ports { K_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 807 \
    name K_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K_1_reload \
    op interface \
    ports { K_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 808 \
    name K_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K_2_reload \
    op interface \
    ports { K_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 809 \
    name K_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K_3_reload \
    op interface \
    ports { K_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 810 \
    name K_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K_4_reload \
    op interface \
    ports { K_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 811 \
    name K_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K_5_reload \
    op interface \
    ports { K_5_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 812 \
    name local_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_load_3 \
    op interface \
    ports { local_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 813 \
    name x_37_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_x_37_out \
    op interface \
    ports { x_37_out { O 32 vector } x_37_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 814 \
    name x_36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_x_36_out \
    op interface \
    ports { x_36_out { O 32 vector } x_36_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 815 \
    name x_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_x_35_out \
    op interface \
    ports { x_35_out { O 32 vector } x_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 816 \
    name x_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_x_34_out \
    op interface \
    ports { x_34_out { O 32 vector } x_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 817 \
    name x_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_x_33_out \
    op interface \
    ports { x_33_out { O 32 vector } x_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 818 \
    name x_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_x_32_out \
    op interface \
    ports { x_32_out { O 32 vector } x_32_out_ap_vld { O 1 bit } } \
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


