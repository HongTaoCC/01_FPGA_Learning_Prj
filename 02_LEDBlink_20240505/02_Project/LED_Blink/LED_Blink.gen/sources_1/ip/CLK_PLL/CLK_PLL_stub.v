// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun May  5 23:03:47 2024
// Host        : HongTao running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/01_CodeLearning/01_FPGA_Verilog_Prj/02_LEDBlink_20240505/02_Project/LED_Blink/LED_Blink.gen/sources_1/ip/CLK_PLL/CLK_PLL_stub.v
// Design      : CLK_PLL
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module CLK_PLL(clk_out1, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="locked,clk_in1" */
/* synthesis syn_force_seq_prim="clk_out1" */;
  output clk_out1 /* synthesis syn_isclock = 1 */;
  output locked;
  input clk_in1;
endmodule
