#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("pstrmInput_TDATA", 32, hls_in, 0, "axis", "in_data", 1),
	Port_Property("pstrmInput_TVALID", 1, hls_in, 6, "axis", "in_vld", 1),
	Port_Property("pstrmInput_TREADY", 1, hls_out, 6, "axis", "in_acc", 1),
	Port_Property("pstrmInput_TKEEP", 4, hls_in, 1, "axis", "in_data", 1),
	Port_Property("pstrmInput_TSTRB", 4, hls_in, 2, "axis", "in_data", 1),
	Port_Property("pstrmInput_TUSER", 1, hls_in, 3, "axis", "in_data", 1),
	Port_Property("pstrmInput_TLAST", 1, hls_in, 4, "axis", "in_data", 1),
	Port_Property("pstrmInput_TID", 1, hls_in, 5, "axis", "in_data", 1),
	Port_Property("pstrmInput_TDEST", 1, hls_in, 6, "axis", "in_data", 1),
	Port_Property("pstrmOutput_TDATA", 32, hls_out, 7, "axis", "out_data", 1),
	Port_Property("pstrmOutput_TVALID", 1, hls_out, 13, "axis", "out_vld", 1),
	Port_Property("pstrmOutput_TREADY", 1, hls_in, 13, "axis", "out_acc", 1),
	Port_Property("pstrmOutput_TKEEP", 4, hls_out, 8, "axis", "out_data", 1),
	Port_Property("pstrmOutput_TSTRB", 4, hls_out, 9, "axis", "out_data", 1),
	Port_Property("pstrmOutput_TUSER", 1, hls_out, 10, "axis", "out_data", 1),
	Port_Property("pstrmOutput_TLAST", 1, hls_out, 11, "axis", "out_data", 1),
	Port_Property("pstrmOutput_TID", 1, hls_out, 12, "axis", "out_data", 1),
	Port_Property("pstrmOutput_TDEST", 1, hls_out, 13, "axis", "out_data", 1),
	Port_Property("s_axi_control_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_AWADDR", 7, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_ARADDR", 7, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "fir_n11_strm";
