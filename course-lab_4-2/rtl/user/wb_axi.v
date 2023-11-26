module wb_axi
#(  parameter pADDR_WIDTH = 32,
    parameter pDATA_WIDTH = 32,
    parameter Tape_Num    = 11,
    parameter Data_Num    = 600
)(
    input         wb_clk_i,
    input         wb_rst_i,
    input         wbs_cyc_i,
    input         wbs_stb_i,
    input         wbs_we_i,
    input [3:0]   wbs_sel_i,
    input [31:0]  wbs_adr_i,
    input [31:0]  wbs_dat_i,
    output reg    wbs_ack_o,
    output reg [31:0] wbs_dat_o
);

    // AXI-Lite
    wire                              awready;
    wire                              wready;
    reg                               awvalid;
    reg                               wvalid;

    wire                              arready;
    reg                               rready;
    reg                               arvalid;
    wire                              rvalid;
    wire signed [(pDATA_WIDTH-1): 0]  rdata;

    // AXI-S
    reg                               ss_tvalid;
    reg                               ss_tlast;
    wire                              ss_tready;
    reg                               sm_tready;
    wire                              sm_tvalid;
    wire signed [(pDATA_WIDTH-1) : 0] sm_tdata;
    wire                              sm_tlast;

    // ram for tap
    wire [3:0]               tap_WE;
    wire                     tap_EN;
    wire [(pDATA_WIDTH-1):0] tap_Di;
    wire [(pADDR_WIDTH-1):0] tap_A;
    wire [(pDATA_WIDTH-1):0] tap_Do;

    // ram for data RAM
    wire [3:0]               data_WE;
    wire                     data_EN;
    wire [(pDATA_WIDTH-1):0] data_Di;
    wire [(pADDR_WIDTH-1):0] data_A;
    wire [(pDATA_WIDTH-1):0] data_Do;
	
		
	
    fir fir_DUT(
        .awready(awready),
        .wready(wready),
        .awvalid(awvalid),
        .awaddr({20'h0, wbs_adr_i[11:0]}),
        .wvalid(wvalid),
        .wdata(wbs_dat_i),
        .arready(arready),
        .rready(rready),
        .arvalid(arvalid),
        .araddr({20'h0, wbs_adr_i[11:0]}),
        .rvalid(rvalid),
        .rdata(rdata),
        .ss_tvalid(ss_tvalid),
        .ss_tdata(wbs_dat_i),
        .ss_tlast(ss_tlast),
        .ss_tready(ss_tready),
        .sm_tready(sm_tready),
        .sm_tvalid(sm_tvalid),
        .sm_tdata(sm_tdata),
        .sm_tlast(sm_tlast),

        // ram for tap
        .tap_WE(tap_WE),
        .tap_EN(tap_EN),
        .tap_Di(tap_Di),
        .tap_A(tap_A),
        .tap_Do(tap_Do),

        // ram for data
        .data_WE(data_WE),
        .data_EN(data_EN),
        .data_Di(data_Di),
        .data_A(data_A),
        .data_Do(data_Do),

        .axis_clk(wb_clk_i),
        .axis_rst_n(~wb_rst_i)
        );

    // RAM for tap
    bram tap_RAM (
        .CLK(wb_clk_i),
        .WE0(tap_WE),
        .EN0(tap_EN),
        .Di0(tap_Di),
        .A0(tap_A),
        .Do0(tap_Do)
    );
    // RAM for data: choose bram11 or bram12
    bram data_RAM(
        .CLK(wb_clk_i),
        .WE0(data_WE),
        .EN0(data_EN),
        .Di0(data_Di),
        .A0(data_A),
        .Do0(data_Do)
    );

    reg [1:0] state, next_state;
    parameter STATE_WBAXI_IDLE = 2'b00;
    parameter STATE_WBAXI_AXILITE = 2'b01;
    parameter STATE_WBAXI_AXISTREAM = 2'b10;
    parameter STATE_WBAXI_ACK = 2'b11;
    
    reg [5:0] counter;
    
    always @(posedge wb_clk_i) begin
        if (wb_rst_i)
            counter <= 6'd0;
        else if (sm_tvalid & (state == STATE_WBAXI_AXISTREAM))
            counter <= counter + 1'b1;
        else
            counter <= counter;

    end

    always@(posedge wb_clk_i) begin
        if (wb_rst_i) begin
            state <= 2'b0;
        end
        else begin
            state <= next_state;
        end
    end

    always@* begin
        case(state)
            STATE_WBAXI_IDLE: begin
                next_state = {2{wbs_cyc_i}} & ((wbs_adr_i[7:0] >= 8'h80)? STATE_WBAXI_AXISTREAM: STATE_WBAXI_AXILITE);
            end
            STATE_WBAXI_AXILITE: begin
                //next_state = ((wbs_we_i & awready & wready) | (~wbs_we_i & rvalid))? STATE_WBAXI_ACK: state;
                next_state = ((wbs_we_i & wready) | (~wbs_we_i & rvalid))? STATE_WBAXI_ACK: state;
            end
            STATE_WBAXI_AXISTREAM: begin
                //next_state = ((wbs_we_i & ss_tready) | (~wbs_we_i & sm_tvalid))? STATE_WBAXI_ACK: state;
                next_state = ((wbs_we_i & ss_tready) | (~wbs_we_i & sm_tvalid))? STATE_WBAXI_ACK: state;
            end
            STATE_WBAXI_ACK: begin
                next_state = STATE_WBAXI_IDLE;
            end
            default: begin
                next_state = STATE_WBAXI_IDLE;
            end
        endcase
        // Axilite
        awvalid = (next_state == STATE_WBAXI_AXILITE) & (wbs_we_i);
        //wvalid = (next_state == STATE_WBAXI_AXILITE) & (wbs_we_i);
        wvalid = (state == STATE_WBAXI_AXILITE) & (wbs_we_i);
        //rready = (next_state == STATE_WBAXI_AXILITE) & (~wbs_we_i) & (arready);
        rready = (state == STATE_WBAXI_AXILITE) & (~wbs_we_i);
        arvalid = (next_state == STATE_WBAXI_AXILITE) & (~wbs_we_i) & (arready);

        // Axi stream
        //ss_tvalid = (state == STATE_WBAXI_AXISTREAM) & (wbs_we_i);
        ss_tlast = (counter == 6'd63)? 1'b1: 1'b0;
        //ss_tvalid = (state == STATE_WBAXI_AXISTREAM) & (~wbs_we_i);
        ss_tvalid = ((wbs_adr_i == 32'h30000080) & wbs_cyc_i)? (state == STATE_WBAXI_AXISTREAM)&1 : 0;
        sm_tready = ((wbs_adr_i == 32'h30000084) & wbs_cyc_i)? (state == STATE_WBAXI_AXISTREAM)&1 : 0;

        // wb
        wbs_ack_o = (state == STATE_WBAXI_ACK);
        if ((state == STATE_WBAXI_AXILITE) & ~wbs_we_i & rvalid) begin
            wbs_dat_o = rdata;
        end
        else if ((state == STATE_WBAXI_AXISTREAM) & ~wbs_we_i & sm_tvalid) begin
            wbs_dat_o = sm_tdata;
        end
        else begin
            wbs_dat_o = 32'b0;
        end
    end
    

    endmodule
