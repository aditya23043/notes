#If required use the below command and launch symbol server from an external shell.
#symbol_server -S -s tcp::1534
connect -path [list tcp::1534 tcp:192.168.226.142:64678]
source /home/adi/repo/notes/sem3/ELD2024_LAB/lab7_hw_3/lab7_hw_3.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A39C93"} -index 0
rst -system
after 3000
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A39C93"} -index 0
loadhw -hw /home/adi/repo/notes/sem3/ELD2024_LAB/lab7_hw_3/lab7_hw_3.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A39C93"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A39C93"} -index 0
dow /home/adi/repo/notes/sem3/ELD2024_LAB/lab7_hw_3/lab7_hw_3.sdk/lab8_hw3/Debug/lab8_hw3.elf
configparams force-mem-access 0
bpadd -addr &main
