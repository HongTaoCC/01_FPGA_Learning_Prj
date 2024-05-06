-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun May  5 23:03:47 2024
-- Host        : HongTao running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/01_CodeLearning/01_FPGA_Verilog_Prj/02_LEDBlink_20240505/02_Project/LED_Blink/LED_Blink.gen/sources_1/ip/CLK_PLL/CLK_PLL_stub.vhdl
-- Design      : CLK_PLL
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CLK_PLL is
  Port ( 
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end CLK_PLL;

architecture stub of CLK_PLL is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,locked,clk_in1";
begin
end;
