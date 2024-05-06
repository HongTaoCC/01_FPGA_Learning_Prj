vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic" \
"../../../../LED_Blink.gen/sources_1/ip/CLK_PLL/CLK_PLL_clk_wiz.v" \
"../../../../LED_Blink.gen/sources_1/ip/CLK_PLL/CLK_PLL.v" \


vlog -work xil_defaultlib \
"glbl.v"

