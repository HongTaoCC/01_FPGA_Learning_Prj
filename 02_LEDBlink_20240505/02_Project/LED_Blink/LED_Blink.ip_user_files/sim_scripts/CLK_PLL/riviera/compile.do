transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic" -l xil_defaultlib \
"../../../../LED_Blink.gen/sources_1/ip/CLK_PLL/CLK_PLL_clk_wiz.v" \
"../../../../LED_Blink.gen/sources_1/ip/CLK_PLL/CLK_PLL.v" \


vlog -work xil_defaultlib \
"glbl.v"

