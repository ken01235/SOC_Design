module ctrl(
    input wire        rst_n,
    input wire        clk,
    input wire        i_wb_valid,
    input wire [31:0] i_wb_adr,
    input wire        i_wb_we,
    input wire [31:0] i_wb_dat,
    input wire [3:0]  i_wb_sel,
    output reg        o_wb_ack,
    output reg [31:0] o_wb_dat,
    input wire [7:0]  i_rx,
//     input wire        i_irq,
    input wire        i_rx_busy,
    input wire        i_frame_err,
    output reg        o_rx_finish,
    output reg [7:0]  o_tx,
    output reg        o_tx_start,
    output reg        o_tx_push,
    input wire        i_tx_start_clear,
    input wire [2:0]  i_tx_fifo_cnt,
    input wire        i_tx_busy
);

// Declare the UART memory mapped registers address
localparam RX_DATA  = 32'h3000_0000;

localparam TX_DATA	= 32'h3000_0004;

localparam STAT_REG = 32'h3000_0008;

//+------+-------+-------+-------+-------+-------+-------+-------+-------+-------+-------+
//|RX_DATA |  RESERVERD  |                        DATA BITS                              |
//|        |    31-8     |  7    |  6    |  5    |  4    |  3    |  2    |  1    |  0    |
//+------+-------+-------+-------+-------+-------+-------+-------+-------+-------+-------+
//|TX_DATA |  RESERVERD  |                        DATA BITS                              |
//|        |    31-8     |  7    |  6    |  5    |  4    |  3    |  2    |  1    |  0    |
//+------+-------+-------+-------+-------+-------+-------+-------+-------+-------+-------+-------+-------+
//|STAT_REG|  RESERVERD  |  Frame Err  |  Overrun Err  |  Tx_full  |  Tx_empty  |  Rx_full  |  Rx_empty |
//|        |    31-6     |  5          |  4            |  3        |  2         |  1        |  0        |
//+------+-------+-------+-------+-------+-------+-------+-------+-------+-------+-------+-------+-------+

reg [31:0] rx_buffer;
reg [31:0] tx_buffer;
reg [31:0] stat_reg;    
reg tx_start_local;
reg tx_fifo_start;
wire next_tx_push;
reg irq;
reg [1:0] irq_valid;
reg [1:0] stat_prev;

//irq{{{

always @(posedge clk or negedge rst_n) begin
    if(rst_n) stat_prev <= 2'b01;	//tx empty
    else stat_prev <= stat_reg[3:2];
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n) irq_valid <= 2'b11;
    else if(stat_reg[3:2] == 2'b01 && stat_prev == 2'b10) irq_valid <= 2'b01;
    else if(irq_valid == 2'b01) irq_valid <= 2'b10;
    else if(irq_valid == 2'b10) irq_valid <= 2'b11;
    else irq_valid <= irq_valid;
end

always @(posedge clk or negedge rst_n) begin
    if(rst_n) irq <= 1'b0;
    else if(i_tx_fifo_cnt > 0 && irq_valid == 2'b11) begin
        //else if(i_tx_fifo_cnt > 0 && !tx_busy) begin
        irq <= 1'b1;
        irq_valid <= 2'b00;
    end
    else irq <= 1'b0;
end

//}}}

//state register{{{

always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        stat_reg <= 32'h0000_0005;
    end else begin
        if(i_wb_valid && !i_wb_we)begin
            if(i_wb_adr==STAT_REG)
                stat_reg[5:4] <= 2'b00;
        end

        if(i_tx_busy)
            stat_reg[3:2] <= 2'b10;
        else
            stat_reg[3:2] <= 2'b01;

        if(i_frame_err && i_rx_busy)
            stat_reg[5] <= 1'b1;
        else if(irq && !stat_reg[1] && !i_frame_err)
            stat_reg[1:0] <= 2'b10;
        else if(i_rx_busy && stat_reg[1:0]==2'b10)
            stat_reg[4] <= 1'b1;
        else if((i_wb_valid && i_wb_adr==RX_DATA && !i_wb_we && stat_reg[1:0]==2'b10) || i_frame_err)
            stat_reg[1:0] <= 2'b01;
    end
end

//}}}

//tx{{{

always@(posedge clk or negedge rst_n)begin
    if(!rst_n || i_tx_start_clear)begin
        tx_buffer <= 32'h00000000;
        tx_start_local <= 1'b0;
    end else begin
        if(i_wb_valid && i_wb_we && i_wb_adr==TX_DATA && !i_tx_busy)begin
            tx_buffer <= i_wb_dat;
            tx_start_local <= 1'b1;
        end
    end
end

always@(posedge clk or negedge rst_n)begin
    if(!rst_n || i_tx_start_clear)begin
        o_tx <= 8'b0;
        tx_fifo_start <= 1'b0;
    end else begin
        o_tx <= tx_buffer[7:0];
        tx_fifo_start <= tx_start_local;
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n || i_tx_start_clear) begin
        o_tx_start <= 1'b0;
    end else begin
        o_tx_start <= (i_tx_fifo_cnt > 0 && !i_tx_busy && !i_tx_start_clear);
    end
end

// tx_push turn on at tx_fifo_start's rising edge
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        o_tx_push <= 1'b0;
    end else begin
        o_tx_push <= next_tx_push;
    end
end
assign next_tx_push = !tx_fifo_start && tx_start_local;

//}}}

//rx{{{

always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        rx_buffer <= 32'h00000000;
    end else begin
        if(irq && !stat_reg[1] && !i_frame_err)begin 
            rx_buffer <= i_rx;
            //$display("rx_buffer: %d", i_rx);
        end
    end
end

always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        o_rx_finish <= 1'b0;
    end else begin
        if((i_wb_valid && i_wb_adr==RX_DATA && !i_wb_we && stat_reg[1:0]==2'b10) || i_frame_err)
            o_rx_finish <= 1'b1;
        else 
            o_rx_finish <= 1'b0;
    end
end

//}}}

//wishbone{{{

always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        o_wb_dat <= 32'h00000000;
    end else begin
        if(i_wb_valid && !i_wb_we)begin
            case(i_wb_adr)
                RX_DATA:begin
                    o_wb_dat <= rx_buffer;
                end
                STAT_REG:begin
                    o_wb_dat <= stat_reg;
                end
                default:begin 
                    o_wb_dat <= 32'h00000000;
                end
            endcase
        end
    end
end

always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        o_wb_ack <= 1'b0;
    end else begin
        if(i_wb_valid)  
            o_wb_ack <= 1'b1;
        else            
            o_wb_ack <= 1'b0;
    end
end

//}}}

endmodule
