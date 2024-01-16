// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Dec 15 13:51:52 2023
// Host        : ubuntu2004 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ubuntu/course-lab_6/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v
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
