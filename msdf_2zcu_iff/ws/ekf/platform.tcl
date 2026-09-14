# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\MSDF_2_ZCU\ws_zcu\ekf\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\MSDF_2_ZCU\ws_zcu\ekf\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ekf}\
-hw {D:\MSDF_2_ZCU\msdf_2zcu\design_1_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {D:/MSDF_2_ZCU/ws_zcu}

platform write
platform generate -domains 
platform active {ekf}
platform generate
platform config -updatehw {D:/MSDF_2_ZCU/msdf_2zcu/design_1_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
platform config -updatehw {D:/MSDF_2_ZCU/msdf_2zcu/design_1_wrapper.xsa}
platform generate -domains 
bsp reload
bsp setlib -name lwip213 -ver 1.0
bsp write
bsp reload
catch {bsp regenerate}
bsp write
bsp write
bsp write
bsp write
platform generate -domains standalone_domain 
platform config -updatehw {D:/MSDF_2_ZCU/msdf_2zcu/design_1_wrapper.xsa}
platform generate -domains 
platform active {ekf}
platform config -updatehw {D:/MSDF_2_ZCU/msdf_2zcu_iff/msdf_2zcu/design_1_wrapper.xsa}
platform generate
platform config -updatehw {D:/MSDF_2_ZCU/msdf_2zcu_iff/msdf_2zcu/design_1_wrapper.xsa}
platform generate -domains 
