onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FL_add_opt

do {wave.do}

view wave
view structure
view signals

do {FL_add.udo}

run -all

quit -force
