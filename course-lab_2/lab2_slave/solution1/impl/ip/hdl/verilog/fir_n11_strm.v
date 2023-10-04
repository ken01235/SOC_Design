// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fir_n11_strm_fir_n11_strm,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xck26-sfvc784-2LV-c,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.290000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=952,HLS_SYN_LUT=1082,HLS_VERSION=2022_1}" *)

module fir_n11_strm (
        ap_clk,
        ap_rst_n,
        pstrmInput_TDATA,
        pstrmInput_TVALID,
        pstrmInput_TREADY,
        pstrmInput_TKEEP,
        pstrmInput_TSTRB,
        pstrmInput_TUSER,
        pstrmInput_TLAST,
        pstrmInput_TID,
        pstrmInput_TDEST,
        pstrmOutput_TDATA,
        pstrmOutput_TVALID,
        pstrmOutput_TREADY,
        pstrmOutput_TKEEP,
        pstrmOutput_TSTRB,
        pstrmOutput_TUSER,
        pstrmOutput_TLAST,
        pstrmOutput_TID,
        pstrmOutput_TDEST,
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 7;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input  [31:0] pstrmInput_TDATA;
input   pstrmInput_TVALID;
output   pstrmInput_TREADY;
input  [3:0] pstrmInput_TKEEP;
input  [3:0] pstrmInput_TSTRB;
input  [0:0] pstrmInput_TUSER;
input  [0:0] pstrmInput_TLAST;
input  [0:0] pstrmInput_TID;
input  [0:0] pstrmInput_TDEST;
output  [31:0] pstrmOutput_TDATA;
output   pstrmOutput_TVALID;
input   pstrmOutput_TREADY;
output  [3:0] pstrmOutput_TKEEP;
output  [3:0] pstrmOutput_TSTRB;
output  [0:0] pstrmOutput_TUSER;
output  [0:0] pstrmOutput_TLAST;
output  [0:0] pstrmOutput_TID;
output  [0:0] pstrmOutput_TDEST;
input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;
output   interrupt;

 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [31:0] an32Coef_q0;
wire   [31:0] regXferLeng;
reg   [30:0] tmp_reg_187;
wire    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start;
wire    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_done;
wire    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_idle;
wire    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready;
wire   [3:0] grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0;
wire    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0;
wire    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY;
wire   [31:0] grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDATA;
wire    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
wire    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TREADY;
wire   [3:0] grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TKEEP;
wire   [3:0] grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TSTRB;
wire   [0:0] grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TUSER;
wire   [0:0] grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST;
wire   [0:0] grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TID;
wire   [0:0] grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDEST;
reg    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire   [32:0] zext_ln1541_fu_167_p1;
wire   [32:0] ret_V_fu_171_p2;
wire    ap_CS_fsm_state4;
wire    regslice_both_pstrmOutput_V_data_V_U_apdone_blk;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    regslice_both_pstrmInput_V_data_V_U_apdone_blk;
wire   [31:0] pstrmInput_TDATA_int_regslice;
wire    pstrmInput_TVALID_int_regslice;
reg    pstrmInput_TREADY_int_regslice;
wire    regslice_both_pstrmInput_V_data_V_U_ack_in;
wire    regslice_both_pstrmInput_V_keep_V_U_apdone_blk;
wire   [3:0] pstrmInput_TKEEP_int_regslice;
wire    regslice_both_pstrmInput_V_keep_V_U_vld_out;
wire    regslice_both_pstrmInput_V_keep_V_U_ack_in;
wire    regslice_both_pstrmInput_V_strb_V_U_apdone_blk;
wire   [3:0] pstrmInput_TSTRB_int_regslice;
wire    regslice_both_pstrmInput_V_strb_V_U_vld_out;
wire    regslice_both_pstrmInput_V_strb_V_U_ack_in;
wire    regslice_both_pstrmInput_V_user_V_U_apdone_blk;
wire   [0:0] pstrmInput_TUSER_int_regslice;
wire    regslice_both_pstrmInput_V_user_V_U_vld_out;
wire    regslice_both_pstrmInput_V_user_V_U_ack_in;
wire    regslice_both_pstrmInput_V_last_V_U_apdone_blk;
wire   [0:0] pstrmInput_TLAST_int_regslice;
wire    regslice_both_pstrmInput_V_last_V_U_vld_out;
wire    regslice_both_pstrmInput_V_last_V_U_ack_in;
wire    regslice_both_pstrmInput_V_id_V_U_apdone_blk;
wire   [0:0] pstrmInput_TID_int_regslice;
wire    regslice_both_pstrmInput_V_id_V_U_vld_out;
wire    regslice_both_pstrmInput_V_id_V_U_ack_in;
wire    regslice_both_pstrmInput_V_dest_V_U_apdone_blk;
wire   [0:0] pstrmInput_TDEST_int_regslice;
wire    regslice_both_pstrmInput_V_dest_V_U_vld_out;
wire    regslice_both_pstrmInput_V_dest_V_U_ack_in;
wire    pstrmOutput_TVALID_int_regslice;
wire    pstrmOutput_TREADY_int_regslice;
wire    regslice_both_pstrmOutput_V_data_V_U_vld_out;
wire    regslice_both_pstrmOutput_V_keep_V_U_apdone_blk;
wire    regslice_both_pstrmOutput_V_keep_V_U_ack_in_dummy;
wire    regslice_both_pstrmOutput_V_keep_V_U_vld_out;
wire    regslice_both_pstrmOutput_V_strb_V_U_apdone_blk;
wire    regslice_both_pstrmOutput_V_strb_V_U_ack_in_dummy;
wire    regslice_both_pstrmOutput_V_strb_V_U_vld_out;
wire    regslice_both_pstrmOutput_V_user_V_U_apdone_blk;
wire    regslice_both_pstrmOutput_V_user_V_U_ack_in_dummy;
wire    regslice_both_pstrmOutput_V_user_V_U_vld_out;
wire    regslice_both_pstrmOutput_V_last_V_U_apdone_blk;
wire    regslice_both_pstrmOutput_V_last_V_U_ack_in_dummy;
wire    regslice_both_pstrmOutput_V_last_V_U_vld_out;
wire    regslice_both_pstrmOutput_V_id_V_U_apdone_blk;
wire    regslice_both_pstrmOutput_V_id_V_U_ack_in_dummy;
wire    regslice_both_pstrmOutput_V_id_V_U_vld_out;
wire    regslice_both_pstrmOutput_V_dest_V_U_apdone_blk;
wire    regslice_both_pstrmOutput_V_dest_V_U_ack_in_dummy;
wire    regslice_both_pstrmOutput_V_dest_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg = 1'b0;
end

fir_n11_strm_fir_n11_strm_Pipeline_XFER_LOOP grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start),
    .ap_done(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_done),
    .ap_idle(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_idle),
    .ap_ready(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready),
    .pstrmInput_TVALID(pstrmInput_TVALID_int_regslice),
    .an32Coef_address0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0),
    .an32Coef_ce0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
    .an32Coef_q0(an32Coef_q0),
    .zext_ln19(tmp_reg_187),
    .pstrmInput_TDATA(pstrmInput_TDATA_int_regslice),
    .pstrmInput_TREADY(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
    .pstrmInput_TKEEP(pstrmInput_TKEEP_int_regslice),
    .pstrmInput_TSTRB(pstrmInput_TSTRB_int_regslice),
    .pstrmInput_TUSER(pstrmInput_TUSER_int_regslice),
    .pstrmInput_TLAST(pstrmInput_TLAST_int_regslice),
    .pstrmInput_TID(pstrmInput_TID_int_regslice),
    .pstrmInput_TDEST(pstrmInput_TDEST_int_regslice),
    .pstrmOutput_TDATA(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDATA),
    .pstrmOutput_TVALID(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
    .pstrmOutput_TREADY(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TREADY),
    .pstrmOutput_TKEEP(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TKEEP),
    .pstrmOutput_TSTRB(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TSTRB),
    .pstrmOutput_TUSER(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TUSER),
    .pstrmOutput_TLAST(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST),
    .pstrmOutput_TID(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TID),
    .pstrmOutput_TDEST(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDEST)
);

fir_n11_strm_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .regXferLeng(regXferLeng),
    .an32Coef_address0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0),
    .an32Coef_ce0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
    .an32Coef_q0(an32Coef_q0),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

fir_n11_strm_regslice_both #(
    .DataWidth( 32 ))
regslice_both_pstrmInput_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(pstrmInput_TDATA),
    .vld_in(pstrmInput_TVALID),
    .ack_in(regslice_both_pstrmInput_V_data_V_U_ack_in),
    .data_out(pstrmInput_TDATA_int_regslice),
    .vld_out(pstrmInput_TVALID_int_regslice),
    .ack_out(pstrmInput_TREADY_int_regslice),
    .apdone_blk(regslice_both_pstrmInput_V_data_V_U_apdone_blk)
);

fir_n11_strm_regslice_both #(
    .DataWidth( 4 ))
regslice_both_pstrmInput_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(pstrmInput_TKEEP),
    .vld_in(pstrmInput_TVALID),
    .ack_in(regslice_both_pstrmInput_V_keep_V_U_ack_in),
    .data_out(pstrmInput_TKEEP_int_regslice),
    .vld_out(regslice_both_pstrmInput_V_keep_V_U_vld_out),
    .ack_out(pstrmInput_TREADY_int_regslice),
    .apdone_blk(regslice_both_pstrmInput_V_keep_V_U_apdone_blk)
);

fir_n11_strm_regslice_both #(
    .DataWidth( 4 ))
regslice_both_pstrmInput_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(pstrmInput_TSTRB),
    .vld_in(pstrmInput_TVALID),
    .ack_in(regslice_both_pstrmInput_V_strb_V_U_ack_in),
    .data_out(pstrmInput_TSTRB_int_regslice),
    .vld_out(regslice_both_pstrmInput_V_strb_V_U_vld_out),
    .ack_out(pstrmInput_TREADY_int_regslice),
    .apdone_blk(regslice_both_pstrmInput_V_strb_V_U_apdone_blk)
);

fir_n11_strm_regslice_both #(
    .DataWidth( 1 ))
regslice_both_pstrmInput_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(pstrmInput_TUSER),
    .vld_in(pstrmInput_TVALID),
    .ack_in(regslice_both_pstrmInput_V_user_V_U_ack_in),
    .data_out(pstrmInput_TUSER_int_regslice),
    .vld_out(regslice_both_pstrmInput_V_user_V_U_vld_out),
    .ack_out(pstrmInput_TREADY_int_regslice),
    .apdone_blk(regslice_both_pstrmInput_V_user_V_U_apdone_blk)
);

fir_n11_strm_regslice_both #(
    .DataWidth( 1 ))
regslice_both_pstrmInput_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(pstrmInput_TLAST),
    .vld_in(pstrmInput_TVALID),
    .ack_in(regslice_both_pstrmInput_V_last_V_U_ack_in),
    .data_out(pstrmInput_TLAST_int_regslice),
    .vld_out(regslice_both_pstrmInput_V_last_V_U_vld_out),
    .ack_out(pstrmInput_TREADY_int_regslice),
    .apdone_blk(regslice_both_pstrmInput_V_last_V_U_apdone_blk)
);

fir_n11_strm_regslice_both #(
    .DataWidth( 1 ))
regslice_both_pstrmInput_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(pstrmInput_TID),
    .vld_in(pstrmInput_TVALID),
    .ack_in(regslice_both_pstrmInput_V_id_V_U_ack_in),
    .data_out(pstrmInput_TID_int_regslice),
    .vld_out(regslice_both_pstrmInput_V_id_V_U_vld_out),
    .ack_out(pstrmInput_TREADY_int_regslice),
    .apdone_blk(regslice_both_pstrmInput_V_id_V_U_apdone_blk)
);

fir_n11_strm_regslice_both #(
    .DataWidth( 1 ))
regslice_both_pstrmInput_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(pstrmInput_TDEST),
    .vld_in(pstrmInput_TVALID),
    .ack_in(regslice_both_pstrmInput_V_dest_V_U_ack_in),
    .data_out(pstrmInput_TDEST_int_regslice),
    .vld_out(regslice_both_pstrmInput_V_dest_V_U_vld_out),
    .ack_out(pstrmInput_TREADY_int_regslice),
    .apdone_blk(regslice_both_pstrmInput_V_dest_V_U_apdone_blk)
);

fir_n11_strm_regslice_both #(
    .DataWidth( 32 ))
regslice_both_pstrmOutput_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDATA),
    .vld_in(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
    .ack_in(pstrmOutput_TREADY_int_regslice),
    .data_out(pstrmOutput_TDATA),
    .vld_out(regslice_both_pstrmOutput_V_data_V_U_vld_out),
    .ack_out(pstrmOutput_TREADY),
    .apdone_blk(regslice_both_pstrmOutput_V_data_V_U_apdone_blk)
);

fir_n11_strm_regslice_both #(
    .DataWidth( 4 ))
regslice_both_pstrmOutput_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TKEEP),
    .vld_in(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
    .ack_in(regslice_both_pstrmOutput_V_keep_V_U_ack_in_dummy),
    .data_out(pstrmOutput_TKEEP),
    .vld_out(regslice_both_pstrmOutput_V_keep_V_U_vld_out),
    .ack_out(pstrmOutput_TREADY),
    .apdone_blk(regslice_both_pstrmOutput_V_keep_V_U_apdone_blk)
);

fir_n11_strm_regslice_both #(
    .DataWidth( 4 ))
regslice_both_pstrmOutput_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TSTRB),
    .vld_in(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
    .ack_in(regslice_both_pstrmOutput_V_strb_V_U_ack_in_dummy),
    .data_out(pstrmOutput_TSTRB),
    .vld_out(regslice_both_pstrmOutput_V_strb_V_U_vld_out),
    .ack_out(pstrmOutput_TREADY),
    .apdone_blk(regslice_both_pstrmOutput_V_strb_V_U_apdone_blk)
);

fir_n11_strm_regslice_both #(
    .DataWidth( 1 ))
regslice_both_pstrmOutput_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TUSER),
    .vld_in(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
    .ack_in(regslice_both_pstrmOutput_V_user_V_U_ack_in_dummy),
    .data_out(pstrmOutput_TUSER),
    .vld_out(regslice_both_pstrmOutput_V_user_V_U_vld_out),
    .ack_out(pstrmOutput_TREADY),
    .apdone_blk(regslice_both_pstrmOutput_V_user_V_U_apdone_blk)
);

fir_n11_strm_regslice_both #(
    .DataWidth( 1 ))
regslice_both_pstrmOutput_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST),
    .vld_in(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
    .ack_in(regslice_both_pstrmOutput_V_last_V_U_ack_in_dummy),
    .data_out(pstrmOutput_TLAST),
    .vld_out(regslice_both_pstrmOutput_V_last_V_U_vld_out),
    .ack_out(pstrmOutput_TREADY),
    .apdone_blk(regslice_both_pstrmOutput_V_last_V_U_apdone_blk)
);

fir_n11_strm_regslice_both #(
    .DataWidth( 1 ))
regslice_both_pstrmOutput_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TID),
    .vld_in(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
    .ack_in(regslice_both_pstrmOutput_V_id_V_U_ack_in_dummy),
    .data_out(pstrmOutput_TID),
    .vld_out(regslice_both_pstrmOutput_V_id_V_U_vld_out),
    .ack_out(pstrmOutput_TREADY),
    .apdone_blk(regslice_both_pstrmOutput_V_id_V_U_apdone_blk)
);

fir_n11_strm_regslice_both #(
    .DataWidth( 1 ))
regslice_both_pstrmOutput_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDEST),
    .vld_in(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
    .ack_in(regslice_both_pstrmOutput_V_dest_V_U_ack_in_dummy),
    .data_out(pstrmOutput_TDEST),
    .vld_out(regslice_both_pstrmOutput_V_dest_V_U_vld_out),
    .ack_out(pstrmOutput_TREADY),
    .apdone_blk(regslice_both_pstrmOutput_V_dest_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg <= 1'b1;
        end else if ((grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready == 1'b1)) begin
            grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        tmp_reg_187 <= {{ret_V_fu_171_p2[32:2]}};
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if ((regslice_both_pstrmOutput_V_data_V_U_apdone_blk == 1'b1)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (regslice_both_pstrmOutput_V_data_V_U_apdone_blk == 1'b0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (regslice_both_pstrmOutput_V_data_V_U_apdone_blk == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        pstrmInput_TREADY_int_regslice = grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY;
    end else begin
        pstrmInput_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (regslice_both_pstrmOutput_V_data_V_U_apdone_blk == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start = grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;

assign grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TREADY = (pstrmOutput_TREADY_int_regslice & ap_CS_fsm_state3);

assign pstrmInput_TREADY = regslice_both_pstrmInput_V_data_V_U_ack_in;

assign pstrmOutput_TVALID = regslice_both_pstrmOutput_V_data_V_U_vld_out;

assign pstrmOutput_TVALID_int_regslice = grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;

assign ret_V_fu_171_p2 = (zext_ln1541_fu_167_p1 + 33'd3);

assign zext_ln1541_fu_167_p1 = regXferLeng;


reg find_kernel_block = 0;
// synthesis translate_off
`include "fir_n11_strm_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on

endmodule //fir_n11_strm

