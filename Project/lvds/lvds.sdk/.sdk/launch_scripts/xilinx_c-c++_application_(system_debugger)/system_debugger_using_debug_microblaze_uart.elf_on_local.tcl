connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248586007"} -index 0
loadhw -hw C:/Users/grzen/Documents/_Studia/mgr-sem1/SDUP/verilog/Project/lvds/lvds.sdk/microblaze_design_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
configparams mdm-detect-bscan-mask 2
configparams force-mem-access 0
