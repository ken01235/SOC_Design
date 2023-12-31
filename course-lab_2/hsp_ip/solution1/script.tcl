############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hsp_ip
set_top fir_n11_maxi
add_files hls_FIRN11MAXI/FIR.cpp
add_files hls_FIRN11MAXI/FIR.h
add_files -tb hls_FIRN11MAXI/FIRTester.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb hsp_ip/out_gold.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -vivado_clock 10
source "./hsp_ip/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
