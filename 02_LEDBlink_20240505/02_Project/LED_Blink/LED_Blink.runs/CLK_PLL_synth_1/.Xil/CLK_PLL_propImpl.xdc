set_property SRC_FILE_INFO {cfile:e:/01_CodeLearning/01_FPGA_Verilog_Prj/02_LEDBlink_20240505/02_Project/LED_Blink/LED_Blink.gen/sources_1/ip/CLK_PLL/CLK_PLL.xdc rfile:../../../LED_Blink.gen/sources_1/ip/CLK_PLL/CLK_PLL.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.200
