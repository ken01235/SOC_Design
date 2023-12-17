// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="caravel_ps_caravel_ps,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=1.993000,HLS_SYN_LAT=0,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=162,HLS_SYN_LUT=344,HLS_VERSION=2022_1}" *)

module caravel_ps (
        mprj_in,
        mprj_out,
        mprj_en,
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
        ap_clk,
        ap_rst_n
);

parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

output  [37:0] mprj_in;
input  [37:0] mprj_out;
input  [37:0] mprj_en;
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
input   ap_clk;
input   ap_rst_n;

wire   [37:0] ps_mprj_in;
wire    ps_mprj_out_ap_vld;
wire    ps_mprj_en_ap_vld;
 reg    ap_rst_n_inv;
wire   [0:0] p_Result_s_fu_171_p1;
wire   [0:0] trunc_ln825_fu_175_p1;
wire   [0:0] trunc_ln825_1_fu_179_p1;
wire   [0:0] p_Result_2_fu_191_p3;
wire   [0:0] tmp_fu_199_p3;
wire   [0:0] tmp_1_fu_207_p3;
wire   [0:0] p_Result_4_fu_223_p3;
wire   [0:0] tmp_3_fu_231_p3;
wire   [0:0] tmp_4_fu_239_p3;
wire   [0:0] p_Result_6_fu_255_p3;
wire   [0:0] tmp_6_fu_263_p3;
wire   [0:0] tmp_7_fu_271_p3;
wire   [0:0] p_Result_8_fu_287_p3;
wire   [0:0] tmp_9_fu_295_p3;
wire   [0:0] tmp_10_fu_303_p3;
wire   [0:0] p_Result_10_fu_319_p3;
wire   [0:0] tmp_12_fu_327_p3;
wire   [0:0] tmp_13_fu_335_p3;
wire   [0:0] p_Result_12_fu_351_p3;
wire   [0:0] tmp_15_fu_359_p3;
wire   [0:0] tmp_16_fu_367_p3;
wire   [0:0] p_Result_14_fu_383_p3;
wire   [0:0] tmp_18_fu_391_p3;
wire   [0:0] tmp_19_fu_399_p3;
wire   [0:0] p_Result_16_fu_415_p3;
wire   [0:0] tmp_21_fu_423_p3;
wire   [0:0] tmp_22_fu_431_p3;
wire   [0:0] p_Result_18_fu_447_p3;
wire   [0:0] tmp_24_fu_455_p3;
wire   [0:0] tmp_25_fu_463_p3;
wire   [0:0] p_Result_20_fu_479_p3;
wire   [0:0] tmp_27_fu_487_p3;
wire   [0:0] tmp_28_fu_495_p3;
wire   [0:0] p_Result_22_fu_511_p3;
wire   [0:0] tmp_30_fu_519_p3;
wire   [0:0] tmp_31_fu_527_p3;
wire   [0:0] p_Result_24_fu_543_p3;
wire   [0:0] tmp_33_fu_551_p3;
wire   [0:0] tmp_34_fu_559_p3;
wire   [0:0] p_Result_26_fu_575_p3;
wire   [0:0] tmp_36_fu_583_p3;
wire   [0:0] tmp_37_fu_591_p3;
wire   [0:0] p_Result_28_fu_607_p3;
wire   [0:0] tmp_39_fu_615_p3;
wire   [0:0] tmp_40_fu_623_p3;
wire   [0:0] p_Result_30_fu_639_p3;
wire   [0:0] tmp_42_fu_647_p3;
wire   [0:0] tmp_43_fu_655_p3;
wire   [0:0] p_Result_32_fu_671_p3;
wire   [0:0] tmp_45_fu_679_p3;
wire   [0:0] tmp_46_fu_687_p3;
wire   [0:0] p_Result_34_fu_703_p3;
wire   [0:0] tmp_48_fu_711_p3;
wire   [0:0] tmp_49_fu_719_p3;
wire   [0:0] p_Result_36_fu_735_p3;
wire   [0:0] tmp_51_fu_743_p3;
wire   [0:0] tmp_52_fu_751_p3;
wire   [0:0] p_Result_38_fu_767_p3;
wire   [0:0] tmp_54_fu_775_p3;
wire   [0:0] tmp_55_fu_783_p3;
wire   [0:0] p_Result_40_fu_799_p3;
wire   [0:0] tmp_57_fu_807_p3;
wire   [0:0] tmp_58_fu_815_p3;
wire   [0:0] p_Result_42_fu_831_p3;
wire   [0:0] tmp_60_fu_839_p3;
wire   [0:0] tmp_61_fu_847_p3;
wire   [0:0] p_Result_44_fu_863_p3;
wire   [0:0] tmp_63_fu_871_p3;
wire   [0:0] tmp_64_fu_879_p3;
wire   [0:0] p_Result_46_fu_895_p3;
wire   [0:0] tmp_66_fu_903_p3;
wire   [0:0] tmp_67_fu_911_p3;
wire   [0:0] p_Result_48_fu_927_p3;
wire   [0:0] tmp_69_fu_935_p3;
wire   [0:0] tmp_70_fu_943_p3;
wire   [0:0] p_Result_50_fu_959_p3;
wire   [0:0] tmp_72_fu_967_p3;
wire   [0:0] tmp_73_fu_975_p3;
wire   [0:0] p_Result_52_fu_991_p3;
wire   [0:0] tmp_75_fu_999_p3;
wire   [0:0] tmp_76_fu_1007_p3;
wire   [0:0] p_Result_54_fu_1023_p3;
wire   [0:0] tmp_78_fu_1031_p3;
wire   [0:0] tmp_79_fu_1039_p3;
wire   [0:0] p_Result_56_fu_1055_p3;
wire   [0:0] tmp_81_fu_1063_p3;
wire   [0:0] tmp_82_fu_1071_p3;
wire   [0:0] p_Result_58_fu_1087_p3;
wire   [0:0] tmp_84_fu_1095_p3;
wire   [0:0] tmp_85_fu_1103_p3;
wire   [0:0] p_Result_60_fu_1119_p3;
wire   [0:0] tmp_87_fu_1127_p3;
wire   [0:0] tmp_88_fu_1135_p3;
wire   [0:0] p_Result_62_fu_1151_p3;
wire   [0:0] tmp_90_fu_1159_p3;
wire   [0:0] tmp_91_fu_1167_p3;
wire   [0:0] p_Result_64_fu_1183_p3;
wire   [0:0] tmp_93_fu_1191_p3;
wire   [0:0] tmp_94_fu_1199_p3;
wire   [0:0] p_Result_66_fu_1215_p3;
wire   [0:0] tmp_96_fu_1223_p3;
wire   [0:0] tmp_97_fu_1231_p3;
wire   [0:0] p_Result_68_fu_1247_p3;
wire   [0:0] tmp_99_fu_1255_p3;
wire   [0:0] tmp_100_fu_1263_p3;
wire   [0:0] p_Result_70_fu_1279_p3;
wire   [0:0] tmp_102_fu_1287_p3;
wire   [0:0] tmp_103_fu_1295_p3;
wire   [0:0] p_Result_72_fu_1311_p3;
wire   [0:0] tmp_105_fu_1319_p3;
wire   [0:0] tmp_106_fu_1327_p3;
wire   [0:0] p_Result_74_fu_1343_p3;
wire   [0:0] tmp_108_fu_1351_p3;
wire   [0:0] tmp_109_fu_1359_p3;
wire   [0:0] p_Result_75_fu_1367_p3;
wire   [0:0] p_Result_73_fu_1335_p3;
wire   [0:0] p_Result_71_fu_1303_p3;
wire   [0:0] p_Result_69_fu_1271_p3;
wire   [0:0] p_Result_67_fu_1239_p3;
wire   [0:0] p_Result_65_fu_1207_p3;
wire   [0:0] p_Result_63_fu_1175_p3;
wire   [0:0] p_Result_61_fu_1143_p3;
wire   [0:0] p_Result_59_fu_1111_p3;
wire   [0:0] p_Result_57_fu_1079_p3;
wire   [0:0] p_Result_55_fu_1047_p3;
wire   [0:0] p_Result_53_fu_1015_p3;
wire   [0:0] p_Result_51_fu_983_p3;
wire   [0:0] p_Result_49_fu_951_p3;
wire   [0:0] p_Result_47_fu_919_p3;
wire   [0:0] p_Result_45_fu_887_p3;
wire   [0:0] p_Result_43_fu_855_p3;
wire   [0:0] p_Result_41_fu_823_p3;
wire   [0:0] p_Result_39_fu_791_p3;
wire   [0:0] p_Result_37_fu_759_p3;
wire   [0:0] p_Result_35_fu_727_p3;
wire   [0:0] p_Result_33_fu_695_p3;
wire   [0:0] p_Result_31_fu_663_p3;
wire   [0:0] p_Result_29_fu_631_p3;
wire   [0:0] p_Result_27_fu_599_p3;
wire   [0:0] p_Result_25_fu_567_p3;
wire   [0:0] p_Result_23_fu_535_p3;
wire   [0:0] p_Result_21_fu_503_p3;
wire   [0:0] p_Result_19_fu_471_p3;
wire   [0:0] p_Result_17_fu_439_p3;
wire   [0:0] p_Result_15_fu_407_p3;
wire   [0:0] p_Result_13_fu_375_p3;
wire   [0:0] p_Result_11_fu_343_p3;
wire   [0:0] p_Result_9_fu_311_p3;
wire   [0:0] p_Result_7_fu_279_p3;
wire   [0:0] p_Result_5_fu_247_p3;
wire   [0:0] p_Result_3_fu_215_p3;
wire   [0:0] p_Val2_s_fu_183_p3;

caravel_ps_control_s_axi #(
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
    .ps_mprj_in(ps_mprj_in),
    .ps_mprj_out(mprj_out),
    .ps_mprj_out_ap_vld(ps_mprj_out_ap_vld),
    .ps_mprj_en(mprj_en),
    .ps_mprj_en_ap_vld(ps_mprj_en_ap_vld)
);

assign ps_mprj_en_ap_vld = 1'b1;

assign ps_mprj_out_ap_vld = 1'b1;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign mprj_in = {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{p_Result_75_fu_1367_p3}, {p_Result_73_fu_1335_p3}}, {p_Result_71_fu_1303_p3}}, {p_Result_69_fu_1271_p3}}, {p_Result_67_fu_1239_p3}}, {p_Result_65_fu_1207_p3}}, {p_Result_63_fu_1175_p3}}, {p_Result_61_fu_1143_p3}}, {p_Result_59_fu_1111_p3}}, {p_Result_57_fu_1079_p3}}, {p_Result_55_fu_1047_p3}}, {p_Result_53_fu_1015_p3}}, {p_Result_51_fu_983_p3}}, {p_Result_49_fu_951_p3}}, {p_Result_47_fu_919_p3}}, {p_Result_45_fu_887_p3}}, {p_Result_43_fu_855_p3}}, {p_Result_41_fu_823_p3}}, {p_Result_39_fu_791_p3}}, {p_Result_37_fu_759_p3}}, {p_Result_35_fu_727_p3}}, {p_Result_33_fu_695_p3}}, {p_Result_31_fu_663_p3}}, {p_Result_29_fu_631_p3}}, {p_Result_27_fu_599_p3}}, {p_Result_25_fu_567_p3}}, {p_Result_23_fu_535_p3}}, {p_Result_21_fu_503_p3}}, {p_Result_19_fu_471_p3}}, {p_Result_17_fu_439_p3}}, {p_Result_15_fu_407_p3}}, {p_Result_13_fu_375_p3}}, {p_Result_11_fu_343_p3}}, {p_Result_9_fu_311_p3}}, {p_Result_7_fu_279_p3}}, {p_Result_5_fu_247_p3}}, {p_Result_3_fu_215_p3}}, {p_Val2_s_fu_183_p3}};

assign p_Result_10_fu_319_p3 = mprj_en[32'd5];

assign p_Result_11_fu_343_p3 = ((p_Result_10_fu_319_p3[0:0] == 1'b1) ? tmp_12_fu_327_p3 : tmp_13_fu_335_p3);

assign p_Result_12_fu_351_p3 = mprj_en[32'd6];

assign p_Result_13_fu_375_p3 = ((p_Result_12_fu_351_p3[0:0] == 1'b1) ? tmp_15_fu_359_p3 : tmp_16_fu_367_p3);

assign p_Result_14_fu_383_p3 = mprj_en[32'd7];

assign p_Result_15_fu_407_p3 = ((p_Result_14_fu_383_p3[0:0] == 1'b1) ? tmp_18_fu_391_p3 : tmp_19_fu_399_p3);

assign p_Result_16_fu_415_p3 = mprj_en[32'd8];

assign p_Result_17_fu_439_p3 = ((p_Result_16_fu_415_p3[0:0] == 1'b1) ? tmp_21_fu_423_p3 : tmp_22_fu_431_p3);

assign p_Result_18_fu_447_p3 = mprj_en[32'd9];

assign p_Result_19_fu_471_p3 = ((p_Result_18_fu_447_p3[0:0] == 1'b1) ? tmp_24_fu_455_p3 : tmp_25_fu_463_p3);

assign p_Result_20_fu_479_p3 = mprj_en[32'd10];

assign p_Result_21_fu_503_p3 = ((p_Result_20_fu_479_p3[0:0] == 1'b1) ? tmp_27_fu_487_p3 : tmp_28_fu_495_p3);

assign p_Result_22_fu_511_p3 = mprj_en[32'd11];

assign p_Result_23_fu_535_p3 = ((p_Result_22_fu_511_p3[0:0] == 1'b1) ? tmp_30_fu_519_p3 : tmp_31_fu_527_p3);

assign p_Result_24_fu_543_p3 = mprj_en[32'd12];

assign p_Result_25_fu_567_p3 = ((p_Result_24_fu_543_p3[0:0] == 1'b1) ? tmp_33_fu_551_p3 : tmp_34_fu_559_p3);

assign p_Result_26_fu_575_p3 = mprj_en[32'd13];

assign p_Result_27_fu_599_p3 = ((p_Result_26_fu_575_p3[0:0] == 1'b1) ? tmp_36_fu_583_p3 : tmp_37_fu_591_p3);

assign p_Result_28_fu_607_p3 = mprj_en[32'd14];

assign p_Result_29_fu_631_p3 = ((p_Result_28_fu_607_p3[0:0] == 1'b1) ? tmp_39_fu_615_p3 : tmp_40_fu_623_p3);

assign p_Result_2_fu_191_p3 = mprj_en[32'd1];

assign p_Result_30_fu_639_p3 = mprj_en[32'd15];

assign p_Result_31_fu_663_p3 = ((p_Result_30_fu_639_p3[0:0] == 1'b1) ? tmp_42_fu_647_p3 : tmp_43_fu_655_p3);

assign p_Result_32_fu_671_p3 = mprj_en[32'd16];

assign p_Result_33_fu_695_p3 = ((p_Result_32_fu_671_p3[0:0] == 1'b1) ? tmp_45_fu_679_p3 : tmp_46_fu_687_p3);

assign p_Result_34_fu_703_p3 = mprj_en[32'd17];

assign p_Result_35_fu_727_p3 = ((p_Result_34_fu_703_p3[0:0] == 1'b1) ? tmp_48_fu_711_p3 : tmp_49_fu_719_p3);

assign p_Result_36_fu_735_p3 = mprj_en[32'd18];

assign p_Result_37_fu_759_p3 = ((p_Result_36_fu_735_p3[0:0] == 1'b1) ? tmp_51_fu_743_p3 : tmp_52_fu_751_p3);

assign p_Result_38_fu_767_p3 = mprj_en[32'd19];

assign p_Result_39_fu_791_p3 = ((p_Result_38_fu_767_p3[0:0] == 1'b1) ? tmp_54_fu_775_p3 : tmp_55_fu_783_p3);

assign p_Result_3_fu_215_p3 = ((p_Result_2_fu_191_p3[0:0] == 1'b1) ? tmp_fu_199_p3 : tmp_1_fu_207_p3);

assign p_Result_40_fu_799_p3 = mprj_en[32'd20];

assign p_Result_41_fu_823_p3 = ((p_Result_40_fu_799_p3[0:0] == 1'b1) ? tmp_57_fu_807_p3 : tmp_58_fu_815_p3);

assign p_Result_42_fu_831_p3 = mprj_en[32'd21];

assign p_Result_43_fu_855_p3 = ((p_Result_42_fu_831_p3[0:0] == 1'b1) ? tmp_60_fu_839_p3 : tmp_61_fu_847_p3);

assign p_Result_44_fu_863_p3 = mprj_en[32'd22];

assign p_Result_45_fu_887_p3 = ((p_Result_44_fu_863_p3[0:0] == 1'b1) ? tmp_63_fu_871_p3 : tmp_64_fu_879_p3);

assign p_Result_46_fu_895_p3 = mprj_en[32'd23];

assign p_Result_47_fu_919_p3 = ((p_Result_46_fu_895_p3[0:0] == 1'b1) ? tmp_66_fu_903_p3 : tmp_67_fu_911_p3);

assign p_Result_48_fu_927_p3 = mprj_en[32'd24];

assign p_Result_49_fu_951_p3 = ((p_Result_48_fu_927_p3[0:0] == 1'b1) ? tmp_69_fu_935_p3 : tmp_70_fu_943_p3);

assign p_Result_4_fu_223_p3 = mprj_en[32'd2];

assign p_Result_50_fu_959_p3 = mprj_en[32'd25];

assign p_Result_51_fu_983_p3 = ((p_Result_50_fu_959_p3[0:0] == 1'b1) ? tmp_72_fu_967_p3 : tmp_73_fu_975_p3);

assign p_Result_52_fu_991_p3 = mprj_en[32'd26];

assign p_Result_53_fu_1015_p3 = ((p_Result_52_fu_991_p3[0:0] == 1'b1) ? tmp_75_fu_999_p3 : tmp_76_fu_1007_p3);

assign p_Result_54_fu_1023_p3 = mprj_en[32'd27];

assign p_Result_55_fu_1047_p3 = ((p_Result_54_fu_1023_p3[0:0] == 1'b1) ? tmp_78_fu_1031_p3 : tmp_79_fu_1039_p3);

assign p_Result_56_fu_1055_p3 = mprj_en[32'd28];

assign p_Result_57_fu_1079_p3 = ((p_Result_56_fu_1055_p3[0:0] == 1'b1) ? tmp_81_fu_1063_p3 : tmp_82_fu_1071_p3);

assign p_Result_58_fu_1087_p3 = mprj_en[32'd29];

assign p_Result_59_fu_1111_p3 = ((p_Result_58_fu_1087_p3[0:0] == 1'b1) ? tmp_84_fu_1095_p3 : tmp_85_fu_1103_p3);

assign p_Result_5_fu_247_p3 = ((p_Result_4_fu_223_p3[0:0] == 1'b1) ? tmp_3_fu_231_p3 : tmp_4_fu_239_p3);

assign p_Result_60_fu_1119_p3 = mprj_en[32'd30];

assign p_Result_61_fu_1143_p3 = ((p_Result_60_fu_1119_p3[0:0] == 1'b1) ? tmp_87_fu_1127_p3 : tmp_88_fu_1135_p3);

assign p_Result_62_fu_1151_p3 = mprj_en[32'd31];

assign p_Result_63_fu_1175_p3 = ((p_Result_62_fu_1151_p3[0:0] == 1'b1) ? tmp_90_fu_1159_p3 : tmp_91_fu_1167_p3);

assign p_Result_64_fu_1183_p3 = mprj_en[32'd32];

assign p_Result_65_fu_1207_p3 = ((p_Result_64_fu_1183_p3[0:0] == 1'b1) ? tmp_93_fu_1191_p3 : tmp_94_fu_1199_p3);

assign p_Result_66_fu_1215_p3 = mprj_en[32'd33];

assign p_Result_67_fu_1239_p3 = ((p_Result_66_fu_1215_p3[0:0] == 1'b1) ? tmp_96_fu_1223_p3 : tmp_97_fu_1231_p3);

assign p_Result_68_fu_1247_p3 = mprj_en[32'd34];

assign p_Result_69_fu_1271_p3 = ((p_Result_68_fu_1247_p3[0:0] == 1'b1) ? tmp_99_fu_1255_p3 : tmp_100_fu_1263_p3);

assign p_Result_6_fu_255_p3 = mprj_en[32'd3];

assign p_Result_70_fu_1279_p3 = mprj_en[32'd35];

assign p_Result_71_fu_1303_p3 = ((p_Result_70_fu_1279_p3[0:0] == 1'b1) ? tmp_102_fu_1287_p3 : tmp_103_fu_1295_p3);

assign p_Result_72_fu_1311_p3 = mprj_en[32'd36];

assign p_Result_73_fu_1335_p3 = ((p_Result_72_fu_1311_p3[0:0] == 1'b1) ? tmp_105_fu_1319_p3 : tmp_106_fu_1327_p3);

assign p_Result_74_fu_1343_p3 = mprj_en[32'd37];

assign p_Result_75_fu_1367_p3 = ((p_Result_74_fu_1343_p3[0:0] == 1'b1) ? tmp_108_fu_1351_p3 : tmp_109_fu_1359_p3);

assign p_Result_7_fu_279_p3 = ((p_Result_6_fu_255_p3[0:0] == 1'b1) ? tmp_6_fu_263_p3 : tmp_7_fu_271_p3);

assign p_Result_8_fu_287_p3 = mprj_en[32'd4];

assign p_Result_9_fu_311_p3 = ((p_Result_8_fu_287_p3[0:0] == 1'b1) ? tmp_9_fu_295_p3 : tmp_10_fu_303_p3);

assign p_Result_s_fu_171_p1 = mprj_en[0:0];

assign p_Val2_s_fu_183_p3 = ((p_Result_s_fu_171_p1[0:0] == 1'b1) ? trunc_ln825_fu_175_p1 : trunc_ln825_1_fu_179_p1);

assign tmp_100_fu_1263_p3 = ps_mprj_in[32'd34];

assign tmp_102_fu_1287_p3 = mprj_out[32'd35];

assign tmp_103_fu_1295_p3 = ps_mprj_in[32'd35];

assign tmp_105_fu_1319_p3 = mprj_out[32'd36];

assign tmp_106_fu_1327_p3 = ps_mprj_in[32'd36];

assign tmp_108_fu_1351_p3 = mprj_out[32'd37];

assign tmp_109_fu_1359_p3 = ps_mprj_in[32'd37];

assign tmp_10_fu_303_p3 = ps_mprj_in[32'd4];

assign tmp_12_fu_327_p3 = mprj_out[32'd5];

assign tmp_13_fu_335_p3 = ps_mprj_in[32'd5];

assign tmp_15_fu_359_p3 = mprj_out[32'd6];

assign tmp_16_fu_367_p3 = ps_mprj_in[32'd6];

assign tmp_18_fu_391_p3 = mprj_out[32'd7];

assign tmp_19_fu_399_p3 = ps_mprj_in[32'd7];

assign tmp_1_fu_207_p3 = ps_mprj_in[32'd1];

assign tmp_21_fu_423_p3 = mprj_out[32'd8];

assign tmp_22_fu_431_p3 = ps_mprj_in[32'd8];

assign tmp_24_fu_455_p3 = mprj_out[32'd9];

assign tmp_25_fu_463_p3 = ps_mprj_in[32'd9];

assign tmp_27_fu_487_p3 = mprj_out[32'd10];

assign tmp_28_fu_495_p3 = ps_mprj_in[32'd10];

assign tmp_30_fu_519_p3 = mprj_out[32'd11];

assign tmp_31_fu_527_p3 = ps_mprj_in[32'd11];

assign tmp_33_fu_551_p3 = mprj_out[32'd12];

assign tmp_34_fu_559_p3 = ps_mprj_in[32'd12];

assign tmp_36_fu_583_p3 = mprj_out[32'd13];

assign tmp_37_fu_591_p3 = ps_mprj_in[32'd13];

assign tmp_39_fu_615_p3 = mprj_out[32'd14];

assign tmp_3_fu_231_p3 = mprj_out[32'd2];

assign tmp_40_fu_623_p3 = ps_mprj_in[32'd14];

assign tmp_42_fu_647_p3 = mprj_out[32'd15];

assign tmp_43_fu_655_p3 = ps_mprj_in[32'd15];

assign tmp_45_fu_679_p3 = mprj_out[32'd16];

assign tmp_46_fu_687_p3 = ps_mprj_in[32'd16];

assign tmp_48_fu_711_p3 = mprj_out[32'd17];

assign tmp_49_fu_719_p3 = ps_mprj_in[32'd17];

assign tmp_4_fu_239_p3 = ps_mprj_in[32'd2];

assign tmp_51_fu_743_p3 = mprj_out[32'd18];

assign tmp_52_fu_751_p3 = ps_mprj_in[32'd18];

assign tmp_54_fu_775_p3 = mprj_out[32'd19];

assign tmp_55_fu_783_p3 = ps_mprj_in[32'd19];

assign tmp_57_fu_807_p3 = mprj_out[32'd20];

assign tmp_58_fu_815_p3 = ps_mprj_in[32'd20];

assign tmp_60_fu_839_p3 = mprj_out[32'd21];

assign tmp_61_fu_847_p3 = ps_mprj_in[32'd21];

assign tmp_63_fu_871_p3 = mprj_out[32'd22];

assign tmp_64_fu_879_p3 = ps_mprj_in[32'd22];

assign tmp_66_fu_903_p3 = mprj_out[32'd23];

assign tmp_67_fu_911_p3 = ps_mprj_in[32'd23];

assign tmp_69_fu_935_p3 = mprj_out[32'd24];

assign tmp_6_fu_263_p3 = mprj_out[32'd3];

assign tmp_70_fu_943_p3 = ps_mprj_in[32'd24];

assign tmp_72_fu_967_p3 = mprj_out[32'd25];

assign tmp_73_fu_975_p3 = ps_mprj_in[32'd25];

assign tmp_75_fu_999_p3 = mprj_out[32'd26];

assign tmp_76_fu_1007_p3 = ps_mprj_in[32'd26];

assign tmp_78_fu_1031_p3 = mprj_out[32'd27];

assign tmp_79_fu_1039_p3 = ps_mprj_in[32'd27];

assign tmp_7_fu_271_p3 = ps_mprj_in[32'd3];

assign tmp_81_fu_1063_p3 = mprj_out[32'd28];

assign tmp_82_fu_1071_p3 = ps_mprj_in[32'd28];

assign tmp_84_fu_1095_p3 = mprj_out[32'd29];

assign tmp_85_fu_1103_p3 = ps_mprj_in[32'd29];

assign tmp_87_fu_1127_p3 = mprj_out[32'd30];

assign tmp_88_fu_1135_p3 = ps_mprj_in[32'd30];

assign tmp_90_fu_1159_p3 = mprj_out[32'd31];

assign tmp_91_fu_1167_p3 = ps_mprj_in[32'd31];

assign tmp_93_fu_1191_p3 = mprj_out[32'd32];

assign tmp_94_fu_1199_p3 = ps_mprj_in[32'd32];

assign tmp_96_fu_1223_p3 = mprj_out[32'd33];

assign tmp_97_fu_1231_p3 = ps_mprj_in[32'd33];

assign tmp_99_fu_1255_p3 = mprj_out[32'd34];

assign tmp_9_fu_295_p3 = mprj_out[32'd4];

assign tmp_fu_199_p3 = mprj_out[32'd1];

assign trunc_ln825_1_fu_179_p1 = ps_mprj_in[0:0];

assign trunc_ln825_fu_175_p1 = mprj_out[0:0];

endmodule //caravel_ps
