onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib xfft_03_opt

do {wave.do}

view wave
view structure
view signals

do {xfft_03.udo}

run -all

quit -force
