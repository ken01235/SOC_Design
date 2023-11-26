// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype wire
/*
 *-------------------------------------------------------------
 *
 * user_proj_example
 *
 * This is an example of a (trivially simple) user project,
 * showing how the user project can connect to the logic
 * analyzer, the wishbone bus, and the I/O pads.
 *
 * This project generates an integer count, which is output
 * on the user area GPIO pads (digital output only).  The
 * wishbone connection allows the project to be controlled
 * (start and stop) from the management SoC program.
 *
 * See the testbenches in directory "mprj_counter" for the
 * example programs that drive this user project.  The three
 * testbenches are "io_ports", "la_test1", and "la_test2".
 *
 *-------------------------------------------------------------
 */

module user_proj_example #(
    parameter BITS = 32,
    parameter DELAYS=10
)(
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output reg wbs_ack_o,
    output reg [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // IRQ
    output [2:0] irq
);

    wire wbs_cyc_i_exmemfir, wbs_cyc_i_wbaxi;
    wire [31:0] wbs_dat_o_exmemfir, wbs_dat_o_wbaxi;
    wire wbs_ack_o_exmemfir, wbs_ack_o_wbaxi;
    
    // WB MI A
    wire valid_exmemfir;
    wire [3:0] wstrb;
    reg [3:0] counter;
    assign valid_exmemfir = wbs_stb_i && wbs_cyc_i_exmemfir;
    assign wstrb = wbs_sel_i & {4{wbs_we_i}};

    // decoder
    assign wbs_cyc_i_exmemfir = (wbs_adr_i[31:24] == 8'h38)? wbs_cyc_i: 1'b0;
    assign wbs_cyc_i_wbaxi = (wbs_adr_i[31:24] == 8'h30)? wbs_cyc_i: 1'b0;
    always @(*) begin
        if (wbs_cyc_i_exmemfir) begin
            wbs_dat_o = wbs_dat_o_exmemfir;
            wbs_ack_o = wbs_ack_o_exmemfir;
        end
        else if (wbs_cyc_i_wbaxi) begin
            wbs_dat_o = wbs_dat_o_wbaxi;
            wbs_ack_o = wbs_ack_o_wbaxi;
        end
        else begin
            wbs_dat_o = 32'b0;
            wbs_ack_o = 1'b0;
        end
    end
       
    // exmem_fir
    
    // counter
    always @(posedge wb_clk_i) begin
        if (wb_rst_i)
            counter <= 4'd0;        
        else if ((wbs_cyc_i & wbs_stb_i) & wbs_cyc_i_exmemfir)  // ??ªæ??WB cyc??®æ????¯bram?????????
            if (counter == 4'd11)
                counter <= 4'd0;
            else
                counter <= counter + 1'b1;
        else
            counter <= 4'd0;
    end
    
    assign wbs_ack_o_exmemfir = (counter == 4'd11);
    
    bram user_bram (
        .CLK(wb_clk_i),
        .WE0(wstrb),
        .EN0(valid_exmemfir), // modified
        .Di0(wbs_dat_i),
        .Do0(wbs_dat_o_exmemfir),
        .A0(wbs_adr_i)
    );
    


    // wb axi
    wb_axi wb_axi(
        .wb_clk_i(wb_clk_i),
        .wb_rst_i(wb_rst_i),
        .wbs_cyc_i(wbs_cyc_i_wbaxi),
        .wbs_stb_i(wbs_stb_i),
        .wbs_we_i(wbs_we_i),
        .wbs_sel_i(wbs_sel_i),
        .wbs_adr_i(wbs_adr_i),
        .wbs_dat_i(wbs_dat_i),
        .wbs_ack_o(wbs_ack_o_wbaxi),
        .wbs_dat_o(wbs_dat_o_wbaxi)
    );


    endmodule

`default_nettype wire


