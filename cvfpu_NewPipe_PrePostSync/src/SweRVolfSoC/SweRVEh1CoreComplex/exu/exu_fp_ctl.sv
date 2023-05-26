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
   input fpnew_pkg::operation_e fpu_op_i,
   input logic        fpu_op_mod_i,

   output logic        finish,                    // Finish smallnum or normal divide
   output logic        fp_stall,                  // FP Addition is running
   output logic [31:0] out                        // Result
  );

  localparam FOP_BITS  = fpnew_pkg::OP_BITS;
   
//   logic [31:0]  operand1_fp_delayed;
//   logic [31:0]  operand2_fp_delayed;
   logic [31:0]  out_fp;

//   logic         fp_delayed;
//   logic         fp_delayed_X2;
   logic         inverted_rst_l;

   logic [2:0][31:0] operands_i;
   logic in_valid;
   logic busy;
   logic finish_operation;
   
   
   assign inverted_rst_l          = ~rst_l;
   
//Input flops

   rvdff  #(1)  in_valid_fp (.*, .clk(active_clk),    .din(fp_p.fp_add | fp_p.fp_mul | fp_p.fp_div | fp_p.fp_sub),          .dout(in_valid));

   
//insert operands into the array
  // rvdff  #(1)  in_valid_fp_X2 (.*, .clk(active_clk),    .din(fp_delayed),       .dout(fp_delayed_X2));
  // rvdff #(fpnew_pkg::OP_BITS) op_delayed_X2 (.*, .clk(active_clk),    .din(fpu_op_delayed),       .dout(fpu_op_delayed_X2));

    always_ff @ ( posedge clk or negedge rst_l) begin
        if (rst_l == 0) begin
            operands_i[0] <= 32'b0;
            operands_i[1] <= 32'b0;
            operands_i[2] <= 32'b0;

            end
        else begin
             if(fp_p.fp_add || fp_p.fp_sub) begin
                   operands_i[0] <= 32'b0;
                   operands_i[1] <= operand1;
                   operands_i[2] <= operand2;

                end
            else if(fp_p.fp_mul) begin
                   operands_i[0] <= operand1;
                   operands_i[1] <= operand2;
                   operands_i[2] <= 32'b0;

                end
            else if(fp_p.fp_div) begin
                   operands_i[0] <= operand1;
                   operands_i[1] <= operand2;
                   operands_i[2] <= 32'b0;
               end   
            else begin
                  //  in_valid <= 1'b0;
                end
            end
    end


//Module fpnew starts calculating
 fpnew_top #(
  .Features       ( fpnew_pkg::RV32F          ),
  .Implementation ( fpnew_pkg::DEFAULT_NOREGS ),
  .TagType        ( logic                     )
) i_fpnew_top (
  .clk_i(clk),
  .rst_ni(rst_l),
  .operands_i(operands_i),
  .rnd_mode_i(fpnew_pkg::RNE),
  .op_i(fpu_op_i),
  .op_mod_i(fpu_op_mod_i),
  .src_fmt_i(fpnew_pkg::FP32),
  .dst_fmt_i(fpnew_pkg::FP32),
  .int_fmt_i(fpnew_pkg::INT32),
  .vectorial_op_i(),
  .tag_i(),
  .in_valid_i(in_valid),
  .in_ready_o(),
  .flush_i(inverted_rst_l),
  .result_o(out_fp),
  .status_o(),
  .tag_o(),
  .out_valid_o(finish_operation),
  .out_ready_i(1'b1),
  .busy_o(busy)
);


  
//Output flops

    rvdffe #(32) out_delayed (.*, .en(finish_operation), .clk(clk),    .din(out_fp),       .dout(out));
    rvdff  #(1) finish_delayed (.*, .clk(clk),    .din(finish_operation),       .dout(finish));

//stall output 
    assign fp_stall = busy | finish;


endmodule // exu_fp_ctl