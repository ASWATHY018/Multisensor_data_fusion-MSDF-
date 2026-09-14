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
    id 767 \
    name s_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_2 \
    op interface \
    ports { s_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 768 \
    name H_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_H_5_reload \
    op interface \
    ports { H_5_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 769 \
    name H_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_H_4_reload \
    op interface \
    ports { H_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 770 \
    name H_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_H_3_reload \
    op interface \
    ports { H_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 771 \
    name H_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_H_2_reload \
    op interface \
    ports { H_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 772 \
    name H_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_H_1_reload \
    op interface \
    ports { H_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 773 \
    name H_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_H_reload \
    op interface \
    ports { H_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 774 \
    name Ph_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ph_reload \
    op interface \
    ports { Ph_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 775 \
    name Ph_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ph_1_reload \
    op interface \
    ports { Ph_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 776 \
    name Ph_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ph_2_reload \
    op interface \
    ports { Ph_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 777 \
    name Ph_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ph_3_reload \
    op interface \
    ports { Ph_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 778 \
    name Ph_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ph_4_reload \
    op interface \
    ports { Ph_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 779 \
    name Ph_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ph_5_reload \
    op interface \
    ports { Ph_5_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 780 \
    name s_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_out \
    op interface \
    ports { s_out { O 32 vector } s_out_ap_vld { O 1 bit } } \
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


