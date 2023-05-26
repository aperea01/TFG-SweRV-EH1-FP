// SPDX-License-Identifier: Apache-2.0
// Copyright 2019 Western Digital Corporation or its affiliates.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


module exu_fp_ctl
   import swerv_types::*;
(
   input logic         clk,                       // Top level clock
   input logic         active_clk,                // Level 1 active clock
   input logic         rst_l,                     // Reset
   input logic         scan_mode,                 // Scan mode

   input logic  [31:0] operand1,                  // First Summand
   input logic  [31:0] operand2,                  // Second Summand

   input fp_pkt_t      fp_p,

   output logic        finish,                    // Finish smallnum or normal divide
   output logic        fp_stall,                  // FP Addition is running
   output logic [31:0] out                        // Result
  );

   logic [31:0]  operand1_fp_delayed;
   logic [31:0]  operand2_fp_delayed;
   logic         fp_add_ini;
   logic [31:0]	 out_fp_add;
   logic         out_fp_add_stb;
   logic         out_fp_add_stb_delayed;
   logic         run_in, run_state;
   logic         fp_add_delayed, fp_add_delayed_X2, fp_add_delayed_X3;
   logic         fp_mul_ini;
   logic [31:0]	 out_fp_mul;
   logic         out_fp_mul_stb;
   logic         out_fp_mul_stb_delayed;
   logic         fp_mul_delayed, fp_mul_delayed_X2, fp_mul_delayed_X3;
   logic         fp_div_ini;
   logic [31:0]	 out_fp_div;
   logic         out_fp_div_stb;
   logic         out_fp_div_stb_delayed;
   logic         fp_div_delayed, fp_div_delayed_X2, fp_div_delayed_X3;
   
   logic inverted_rst_l;
   
   assign inverted_rst_l          = ~rst_l;
  
   assign out[31:0]				  = out_fp_add_stb_delayed
									? (out_fp_add)
									: (out_fp_mul_stb_delayed
										? (out_fp_mul)
										: (out_fp_div_stb_delayed
											?(out_fp_div)
											:(32'b0)));
   
   assign finish                  = out_fp_add_stb | out_fp_mul_stb | out_fp_div_stb;

   assign fp_stall                = run_state;
   assign run_in                  = (fp_add_delayed_X2 | fp_mul_delayed_X2 | fp_div_delayed_X2 | run_state) & ~finish;

   rvdff  #(1)  runff       (.*, .clk(active_clk),     .din(run_in),              .dout(run_state));
   rvdffe #(32) sum1        (.*, .en(fp_p.fp_add | fp_p.fp_mul | fp_p.fp_div),    .din(operand1[31:0]),       .dout(operand1_fp_delayed[31:0]));
   rvdffe #(32) sum2        (.*, .en(fp_p.fp_add | fp_p.fp_mul | fp_p.fp_div),    .din(operand2[31:0]),       .dout(operand2_fp_delayed[31:0]));
   rvdff  #(1)  stb_fp_add  (.*, .clk(active_clk),    .din(fp_p.fp_add),          .dout(fp_add_delayed));
   rvdff  #(1)  stb_fp_add2 (.*, .clk(active_clk),    .din(fp_add_delayed),       .dout(fp_add_delayed_X2));
   rvdff  #(1)  stb_fp_add3 (.*, .clk(active_clk),    .din(fp_add_delayed_X2),    .dout(fp_add_delayed_X3));
   rvdff  #(1)  stb_fp_mul  (.*, .clk(active_clk),    .din(fp_p.fp_mul),          .dout(fp_mul_delayed));
   rvdff  #(1)  stb_fp_mul2 (.*, .clk(active_clk),    .din(fp_mul_delayed),       .dout(fp_mul_delayed_X2));
   rvdff  #(1)  stb_fp_mul3 (.*, .clk(active_clk),    .din(fp_mul_delayed_X2),    .dout(fp_mul_delayed_X3));
   rvdff  #(1)  stb_fp_div  (.*, .clk(active_clk),    .din(fp_p.fp_div),          .dout(fp_div_delayed));
   rvdff  #(1)  stb_fp_div2 (.*, .clk(active_clk),    .din(fp_div_delayed),       .dout(fp_div_delayed_X2));
   rvdff  #(1)  stb_fp_div3 (.*, .clk(active_clk),    .din(fp_div_delayed_X2),    .dout(fp_div_delayed_X3));
   rvdff #(1)   dp_fp_str_add     (.*, .din(out_fp_add_stb),          .dout(out_fp_add_stb_delayed));
   rvdff #(1)   dp_fp_str_mul     (.*, .din(out_fp_mul_stb),          .dout(out_fp_mul_stb_delayed));
   rvdff #(1)   dp_fp_str_div     (.*, .din(out_fp_div_stb),          .dout(out_fp_div_stb_delayed));
   

   adder FloatingPointAdder(
        .input_a(operand1_fp_delayed),
        .input_b(operand2_fp_delayed),
        .input_a_stb(fp_add_delayed),
        .input_b_stb(fp_add_delayed_X3),
        .output_z_ack(1'b1),
        .clk(active_clk),
        .rst(inverted_rst_l),
        .output_z(out_fp_add),
        .output_z_stb(out_fp_add_stb),
        .input_a_ack(),
        .input_b_ack());
		
   multiplier FloatingPointMultiplier(
		.input_a(operand1_fp_delayed),
        .input_b(operand2_fp_delayed),
        .input_a_stb(fp_mul_delayed),
        .input_b_stb(fp_mul_delayed_X3),
        .output_z_ack(1'b1),
        .clk(active_clk),
        .rst(inverted_rst_l),
        .output_z(out_fp_mul),
        .output_z_stb(out_fp_mul_stb),
        .input_a_ack(),
        .input_b_ack());
		
   divider FloatingPointDivider(
	.input_a(operand1_fp_delayed),
	.input_b(operand2_fp_delayed),
	.input_a_stb(fp_div_delayed),
	.input_b_stb(fp_div_delayed_X3),
	.output_z_ack(1'b1),
	.clk(active_clk),
	.rst(inverted_rst_l),
	.output_z(out_fp_div),
	.output_z_stb(out_fp_div_stb),
	.input_a_ack(),
	.input_b_ack());
	

endmodule // exu_div_ctl
