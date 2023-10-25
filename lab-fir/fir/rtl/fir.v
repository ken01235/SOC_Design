`timescale 1ns / 1ps
module fir 
#(  parameter pADDR_WIDTH = 12,
    parameter pDATA_WIDTH = 32,
    parameter Tape_Num    = 11
)
(
    output  reg                     awready,
    output  reg                     wready,
    input  wire                     awvalid,
    input  wire [(pADDR_WIDTH-1):0] awaddr,
    input  wire                     wvalid,
    input  wire [(pDATA_WIDTH-1):0] wdata,
    output  reg                     arready,
    input  wire                     rready,
    input  wire                     arvalid,
    input  wire [(pADDR_WIDTH-1):0] araddr,
    output  reg                     rvalid,
    output wire [(pDATA_WIDTH-1):0] rdata,
    input  wire                     ss_tvalid,
    input  wire [(pDATA_WIDTH-1):0] ss_tdata,
    input  wire                     ss_tlast,
    output  reg                     ss_tready,
    input  wire                     sm_tready,
    output  reg                     sm_tvalid,
    output  reg [(pDATA_WIDTH-1):0] sm_tdata,
    output  reg                     sm_tlast,

    // bram for tap RAM
    output  reg [3:0]               tap_WE,
    output  reg                     tap_EN,
    output wire [(pDATA_WIDTH-1):0] tap_Di,
    output  reg [(pADDR_WIDTH-1):0] tap_A,
    input  wire [(pDATA_WIDTH-1):0] tap_Do,

    // bram for data RAM
    output  reg [3:0]               data_WE,
    output  reg                     data_EN,
    output  reg [(pDATA_WIDTH-1):0] data_Di,
    output  reg [(pADDR_WIDTH-1):0] data_A,
    input  wire [(pDATA_WIDTH-1):0] data_Do,

    input  wire                     axis_clk,
    input  wire                     axis_rst_n
);
begin

    reg next_awready;
    reg next_wready;
    reg                     next_arready;
    reg                     next_rvalid;
    reg                     next_ss_tready;
    reg                     next_sm_tvalid;
    reg signed [(pDATA_WIDTH-1):1] next_sm_tdata;
    reg                     next_sm_tlast;
    reg [3:0]               next_tap_WE;
    reg                     next_tap_EN;
    reg [(pADDR_WIDTH-1):0] next_tap_A;
    reg [3:0]               next_data_WE;
    reg                     next_data_EN;
    reg [(pDATA_WIDTH-1):0] next_data_Di;
    reg [(pADDR_WIDTH-1):0] next_data_A;

    reg [23:0] FIFO;        // size: 2 addr
    reg [23:0] next_FIFO;
    reg [143:0] FIFO_2;     // size: 12 addr
    reg [143:0] next_FIFO_2;
    reg [31:0] RAM_0, next_RAM_0;

    assign out_FIFO_2 = FIFO_2[11:0];
    assign out_RAM_0 = RAM_0[31:0];

    assign rdata = {(pDATA_WIDTH){rvalid}} & ((FIFO[11:0] != 12'hfff)? tap_Do: RAM_0);
    assign tap_Di = wdata;

    always@(posedge axis_clk) begin
        if (~axis_rst_n) begin
            FIFO <= {2{12'hfff}};
            FIFO_2 <= {12'hfff, 12'h004, 12'h008, 12'h00c, 12'h010, 12'h014, 12'h018, 12'h01c, 12'h020, 12'h024, 12'h028, 12'h000};
            awready <= 1'b0;
            wready <= 1'b0;
            arready <= 1'b0;
            rvalid <= 1'b0;
            tap_WE <= 4'b0;
            tap_EN <= 1'b0;
            tap_A <= 12'b0;
            ss_tready <= 1'b0;
            sm_tvalid <= 1'b0;
            sm_tdata <= 32'b0;
            sm_tlast <= 1'b0;
            data_WE <= 4'b0;
            data_EN <= 1'b0;
            data_Di <= 32'b0;
            data_A <= 12'b0;

            RAM_0 <= 32'h0000_0004;     // reset: idle = 1
        end
        else begin
            FIFO <= next_FIFO;
            FIFO_2 <= next_FIFO_2;
            awready <= next_awready;
            wready <= next_wready;
            arready <= next_arready;
            rvalid <= next_rvalid;
            tap_WE <= next_tap_WE;
            tap_EN <= next_tap_EN;
            tap_A <= next_tap_A;

            ss_tready <= next_ss_tready;
            sm_tvalid <= next_sm_tvalid;
            sm_tdata <= next_sm_tdata;
            sm_tlast <= next_sm_tlast;
            data_WE <= next_data_WE;
            data_EN <= next_data_EN;
            data_Di <= next_data_Di;
            data_A <= next_data_A;

            RAM_0 <= next_RAM_0;
        end
    end

    always@* begin
        if (~RAM_0[0] & RAM_0[2]) begin
            next_FIFO_2 = {12'hfff, 12'h004, 12'h008, 12'h00c, 12'h010, 12'h014, 12'h018, 12'h01c, 12'h020, 12'h024, 12'h028, 12'h000};
            next_ss_tready = 1'b0;
            next_sm_tvalid = 1'b0;
            next_sm_tdata = 32'b0;
            next_sm_tlast = 1'b0;
            next_data_WE = 4'b0;
            next_data_EN = 1'b0;
            next_data_Di = 32'b0;
            next_data_A = 32'b0;
            if (FIFO == 24'hfff_fff) begin
                next_tap_WE = 4'b0;
                next_tap_EN = 1'b0;
                next_tap_A = 12'b0;
                next_wready = 1'b0;
                next_rvalid = 1'b0;
                next_RAM_0 = RAM_0;
                if (awvalid & arvalid) begin
                    next_FIFO = {4'b0, araddr[7:0], 4'b0, awaddr[7:0]};
                    next_awready = 1'b1;
                    next_arready = 1'b1;
                end
                else if (awvalid) begin
                    next_FIFO = {12'hfff, 4'b0, awaddr[7:0]};
                    next_awready = 1'b1;
                    next_arready = 1'b0;
                end
                else if (arvalid) begin
                    next_FIFO = {12'hfff, 4'b0, araddr[7:0]};
                    next_awready = 1'b0;
                    next_arready = 1'b1;
                end
                else begin
                    next_FIFO = 24'hfff_fff;
                    next_awready = 1'b0;
                    next_arready = 1'b0;
                end
            end
            else if (FIFO[11:0] == 12'h00) begin
                next_tap_WE = 4'b0;
                next_tap_EN = 1'b0;
                next_tap_A = 12'b0;
                if (awready) begin
                    if (wready) begin
                        next_FIFO = {12'hfff, FIFO[23:12]};
                        next_RAM_0 = RAM_0;
                        next_awready = 1'b0;
                        next_wready = 1'b0;
                        next_arready = 1'b0;
                        next_rvalid = 1'b0;
                    end
                    else begin
                        next_FIFO = FIFO;
                        next_RAM_0 = wdata;
                        next_awready = 1'b1;
                        next_wready = 1'b1;
                        next_arready = 1'b0;
                        next_rvalid = 1'b0;
                    end
                end
                else if (arready) begin
                    if (rvalid) begin
                        next_FIFO = {12'hfff, FIFO[23:12]};
                        next_RAM_0 = RAM_0;
                        next_awready = 1'b0;
                        next_wready = 1'b0;
                        next_arready = 1'b0;
                        next_rvalid = 1'b0;
                    end
                    else begin
                        next_FIFO = FIFO;
                        next_RAM_0 = RAM_0;
                        next_awready = 1'b0;
                        next_wready = 1'b0;
                        next_arready = 1'b0;
                        next_rvalid = (rready);
                    end
                end
                else begin
                    next_RAM_0 = RAM_0;
                    next_FIFO = 24'hfff_fff;
                    next_awready = 1'b0;
                    next_wready = 1'b0;
                    next_arready = 1'b0;
                    next_rvalid = 1'b0;
                    next_RAM_0 = RAM_0;
                end
            end
            else if ((FIFO[11:0] != 12'hfff) & awready) begin
                next_RAM_0 = RAM_0;
                next_arready = arready;
                next_rvalid = 1'b0;
                if (wready) begin
                    next_tap_WE = 4'b0;
                    next_tap_EN = 1'b0;
                    next_tap_A = 12'b0;
                    next_FIFO = {12'hfff, FIFO[23:12]};
                    next_awready = 1'b0;
                    next_wready = 1'b0;
                end
                else if (wvalid) begin
                    next_tap_WE = 4'b1111;
                    next_tap_EN = 1'b1;
                    next_tap_A = FIFO[11:0] - 12'h20;
                    next_FIFO = FIFO;
                    next_awready = 1'b1;
                    next_wready = 1'b1;
                end
                else begin
                    next_tap_WE = 4'b0;
                    next_tap_EN = 1'b0;
                    next_tap_A = 12'h0;
                    next_FIFO = FIFO;
                    next_awready = 1'b1;
                    next_wready = 1'b0;
                end
            end
            else if ((FIFO[11:0] != 12'hfff) & arready) begin
                next_RAM_0 = RAM_0;
                next_awready = awready;
                next_wready = 1'b0;
                if (rvalid) begin
                    next_tap_WE = 4'b0;
                    next_tap_EN = 1'b0;
                    next_tap_A = 12'b0;
                    next_FIFO = {12'hfff, FIFO[23:12]};
                    next_arready = 1'b0;
                    next_rvalid = 1'b0;
                end
                else if (tap_EN) begin
                    next_tap_WE = 4'b0;
                    next_tap_EN = 1'b1;
                    next_tap_A = FIFO[11:0] - 12'h20;
                    next_FIFO = FIFO;
                    next_arready = 1'b1;
                    next_rvalid = 1'b1;
                end
                else begin
                    next_tap_WE = 4'b0;
                    next_tap_EN = 1'b1;
                    next_tap_A = FIFO[11:0] - 12'h20;
                    next_FIFO = FIFO;
                    next_arready = 1'b1;
                    next_rvalid = 1'b0;
                end
            end
            else begin
                next_RAM_0 = RAM_0;
                next_FIFO = 24'hfff_fff;
                next_tap_WE = 4'b0;
                next_tap_EN = 1'b0;
                next_tap_A = 12'b0;
                next_awready = 1'b0;
                next_wready = 1'b0;
                next_arready = 1'b0;
                next_rvalid = 1'b0;
            end
        end
        else if (RAM_0[0] & ~RAM_0[2]) begin
            next_wready = 1'b0;
            next_rvalid = 1'b0;
            next_FIFO = 24'hfff_fff;
            next_awready = 1'b0;
            next_arready = 1'b0;
            next_FIFO_2 = {FIFO_2[11:0], FIFO_2[143:12]};
            next_RAM_0 = (FIFO_2[11:0] != 12'hfff)? 32'h0000_0001: 32'h0000_0007;
            next_ss_tready = 1'b0;
            next_sm_tvalid = 1'b0;
            next_sm_tdata = 32'b0;
            next_sm_tlast = 1'b0;
            next_data_WE = (FIFO_2[11:0] != 12'hfff)? 4'b1111: 4'b0;
            next_data_EN = (FIFO_2[11:0] != 12'hfff);
            next_data_Di = 32'b0;
            next_data_A = (FIFO_2[11:0] != 12'hfff)? FIFO_2[11:0]: 12'b0;
            next_tap_WE = 4'b0;
            next_tap_EN = 1'b0;
            next_tap_A = 12'b0;
        end
        else begin // ~RAM_0[0] & ~RAM_0[2]
            next_FIFO = 24'hfff_fff;
            next_wready = 1'b0;
            next_awready = 1'b0;
            if (arvalid & (araddr == 12'h000)) begin
                next_rvalid = 1'b1;
                next_arready = 1'b1;
            end else begin
                next_rvalid = 1'b0;
                next_arready = 1'b0;
            end

            if ((FIFO_2[143:132] == 12'hfff) & (ss_tready)) begin
                next_FIFO_2 = {FIFO_2[11:0], FIFO_2[143:12]};
                next_RAM_0 = 32'b0;
                next_ss_tready = 1'b0;
                next_sm_tvalid = 1'b0;
                next_sm_tdata = 32'b0;
                next_sm_tlast = 1'b0;
                next_data_WE = 4'b0;
                next_data_EN = 1'b1;
                next_data_Di = 32'b0;
                next_data_A = FIFO_2[11:0];
                next_tap_WE = 4'b0;
                next_tap_EN = 1'b1;
                next_tap_A = 12'h000;
            end
            else if (FIFO_2[143:132] == 12'hfff) begin
                next_FIFO_2 = FIFO_2;
                next_RAM_0 = (ss_tlast)? 32'h0000_0006: 32'b0;
                next_ss_tready = (ss_tvalid);
                next_sm_tvalid = (~RAM_0[0] & ~RAM_0[2]);
                next_sm_tdata = sm_tdata;
                next_sm_tlast = (ss_tlast);
                next_data_WE = (ss_tvalid)? 4'b1111: 4'b0;
                next_data_EN = (ss_tvalid);
                next_data_Di = (ss_tvalid)? ss_tdata: 32'b0;
                next_data_A = FIFO_2[11:0];
                next_tap_WE = 4'b0;
                next_tap_EN = 1'b0;
                next_tap_A = 12'b0;
            end
            else if (FIFO_2[11:0] == 12'hfff) begin
                next_FIFO_2 = {FIFO_2[11:0], FIFO_2[131:12], FIFO_2[143:132]};
                next_RAM_0 = RAM_0;
                next_ss_tready = 1'b0;
                next_sm_tvalid = 1'b0;
                next_sm_tdata = $signed(sm_tdata) + $signed(tap_Do) * $signed(data_Do);
                next_sm_tlast = 1'b0;
                next_data_WE = 4'b0;
                next_data_EN = 1'b0;
                next_data_Di = 32'b0;
                next_data_A = 32'b0;
                next_tap_WE = 4'b0;
                next_tap_EN = 1'b0;
                next_tap_A = 12'b0;
            end
            else begin
                next_FIFO_2 = {FIFO_2[11:0], FIFO_2[143:12]};
                next_RAM_0 = RAM_0;
                next_ss_tready = 1'b0;
                next_sm_tvalid = 1'b0;
                next_sm_tdata = $signed(sm_tdata) + $signed(tap_Do) * $signed(data_Do);
                next_sm_tlast = 1'b0;
                next_data_WE = 4'b0;
                next_data_EN = 1'b1;
                next_data_Di = 32'b0;
                next_data_A = FIFO_2[11:0];
                next_tap_WE = 4'b0;
                next_tap_EN = 1'b1;
                next_tap_A = tap_A + 12'd4;
            end
        end
    end

end
endmodule 
