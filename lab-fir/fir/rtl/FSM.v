
    reg curr_awready, next_awready;
    reg curr_wready, next_wready;
    reg                     curr_arready, next_arready;
    reg                     curr_rvalid, next_rvalid;
    reg [(pDATA_WIDTH-1):0] curr_rdata, next_rdata;
    reg                     curr_ss_tready, next_ss_tready;
    reg                     curr_sm_tvalid, next_sm_tvalid;
    reg [(pDATA_WIDTH-1):0] curr_sm_tdata, next_sm_tdata;
    reg                     curr_sm_tlast, next_sm_tlast;
    reg [3:0]               curr_tap_WE, next_tap_WE;
    reg                     curr_tap_EN, next_tap_EN;
    reg [(pDATA_WIDTH-1):0] curr_tap_Di, next_tap_Di;
    reg [(pADDR_WIDTH-1):0] curr_tap_A, next_tap_A;
    reg [3:0]               curr_data_WE, next_data_WE;
    reg                     curr_data_EN, next_data_EN;
    reg [(pDATA_WIDTH-1):0] curr_data_Di, next_data_Di;
    reg [(pADDR_WIDTH-1):0] curr_data_A, next_data_A;
    
    always @(posedge axis_clk) begin
        if (~axis_rst_n) begin
            curr_awready <= 1'b0;
            curr_wready <= 1'b0;
            curr_arready <= 1'b0;
            curr_rvalid <= 1'b0;
            curr_rdata <= 32'b0;
            curr_tap_WE <= 4'b0;
            curr_tap_EN <= 1'b0;
            curr_tap_Di <= 32'b0;
            curr_tap_A <= 12'h00;
            curr_data_WE <= 4'b0;
            curr_data_EN <= 1'b0;
            curr_data_Di <= 32'b0;
            curr_data_A <= 12'b0
        end
        else begin
            curr_awready <= next_awready;
            curr_wready <= next_wready;
            curr_arready <= next_arready;
            curr_rvalid <= next_rvalid;
            curr_rdata <= next_rdata;
            curr_tap_WE <= next_tap_WE;
            curr_tap_EN <= next_tap_EN;
            curr_tap_Di <= next_tap_Di;
            curr_tap_A <= next_tap_A;
            curr_data_WE <= next_data_WE;
            curr_data_EN <= next_data_EN;
            curr_data_Di <= next_data_Di;
            curr_data_A <= next_data_A;
        end
    end
    
    ///// FSM /////
    always@* begin
        case (state)
            STATE_IDLE: begin
                if (awvalid)        next_state = STATE_WRITE;
                else if (arvalid)   next_state = STATE_READ;
                else if (ss_tvalid) next_state = STATE_RECEIVE;
                else if (sm_tready) next_state = STATE_TRANSMIT;
                else                next_state = STATE_IDLE;
            end
            STATE_WRITE: begin
                if (wvalid & wready)    next_state = STATE_IDLE;
                else                    next_state = STATE_WRITE;
            end
            STATE_READ: begin
                if () next_state = ;
                else next_state = ;
            end
            STATE_CALCULATE: begin
                if () next_state = ;
                else next_state = ;
            end
            default: begin
                next_state = STATE_IDLE;
            end
        endcase
    end

    ///// write/read tap ram
    always@* begin
        case (state)
            STATE_WRITE: begin
                next_tap_WE = 4'b1111;
                next_tap_EN = 1'b1;
                next_tap_Di = wdata;
                next_tap_A = awaddr;
                next_rdata= 32'b0;

            end
            STATE_READ: begin
                next_tap_WE = 4'b0000;
                next_tap_EN = 1'b1;
                next_tap_Di = 32'b0;
                next_tap_A = awaddr;
                next_rdata = tap_Do;
            end
            default: begin
                next_tap_WE = 4'b0;
                next_tap_EN = 1'b0;
                next_tap_Di = 32'b0;
                next_tap_A = 12'b0;
                next_rdata = 32'b0;
            end
        endcase
    end
