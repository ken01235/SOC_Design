module fifo #(
    parameter DATA_WIDTH = 8,               // Width of input and output data
    parameter ADDR_EXP   = 2                // Width of our address, 

)(
input rst_n,
input clk,                           
input [DATA_WIDTH - 1:0]  i_data,    
input                     push,       // Rx -> FIFO
input                     pop,        // FIFO -> CTRL
output [DATA_WIDTH - 1:0] o_data,  
output reg [ADDR_EXP:0]   cnt
);

localparam ADDR_DEPTH = 2 ** ADDR_EXP;    // FIFO depth is 2^^ADDR_EXP
wire empty,full;

reg   [DATA_WIDTH-1:0]     memory[ADDR_DEPTH-1:0];     // [7:0] [3:0]
reg   [ADDR_EXP-1:0] 	   write_ptr,read_ptr;         //  [1:0]
wire  [ADDR_EXP-1:0] 	   next_write_ptr;          // Next location to write to
wire  [ADDR_EXP-1:0] 	   next_read_ptr;           // Next location to read from
assign next_write_ptr = (write_ptr == ADDR_DEPTH-1) ? 0  :write_ptr + 1;
assign next_read_ptr  = (read_ptr  == ADDR_DEPTH-1) ? 0  :read_ptr  + 1;

wire 		     accept_write;                        // Asserted when we can accept this write (PUSH)
wire 		     accept_read;                         // Asserted when we can accept this read (POP)
assign accept_write = push && !full;
assign accept_read  = pop && !empty;

assign empty = (cnt == {ADDR_EXP{1'b0}} && read_ptr == write_ptr);
assign full  = (cnt == ADDR_DEPTH && read_ptr == write_ptr);

assign o_data = memory[read_ptr];
always @(*)begin
    if(accept_write) memory[write_ptr] <= i_data;  
end	

// pointer logic
always @(posedge clk or posedge rst_n)begin
    if(!rst_n)begin
        write_ptr <= {ADDR_EXP{1'b0}};
        read_ptr  <= {ADDR_EXP{1'b0}};
        cnt     <= {ADDR_EXP{1'b0}};
    end else begin
        if (accept_write) begin
            write_ptr <= next_write_ptr;         
            cnt <= cnt + 1'b1;   
        end 

        if(accept_read) begin
            read_ptr <= next_read_ptr;   
            cnt <= cnt - 1;
        end
    end
end

endmodule 
