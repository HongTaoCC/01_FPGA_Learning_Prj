transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+CLK_PLL  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.CLK_PLL xil_defaultlib.glbl

do {CLK_PLL.udo}

run 1000ns

endsim

quit -force
