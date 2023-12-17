// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Dec 13 05:24:29 2023
// Host        : ubuntu2004 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ubuntu/SOC_Design/course-lab_6/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59888)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
