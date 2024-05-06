vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic" \
"../../../../LED_Blink.gen/sources_1/ip/CLK_PLL/CLK_PLL_clk_wiz.v" \
"../../../../LED_Blink.gen/sources_1/ip/CLK_PLL/CLK_PLL.v" \


vlog -work xil_defaultlib \
"glbl.v"

