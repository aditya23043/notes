onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FL_sqrt_opt

do {wave.do}

view wave
view structure
view signals

do {FL_sqrt.udo}

run -all

quit -force
