connect -url tcp:127.0.0.1:3121
source /home/adi/repo/notes/sem3/ELD2024_LAB/lab8_2/lab8_2.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A39C83"} -index 0
rst -system
after 3000
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A39C83"} -index 0
loadhw -hw /home/adi/repo/notes/sem3/ELD2024_LAB/lab8_2/lab8_2.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A39C83"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A39C83"} -index 0
dow /home/adi/repo/notes/sem3/ELD2024_LAB/lab8_2/lab8_2.sdk/hello_world/Debug/hello_world.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A39C83"} -index 0
con
