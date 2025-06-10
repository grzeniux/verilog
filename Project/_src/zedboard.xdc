## 1. Zegar systemowy 100 MHz (na ZedBoardzie: E15)
set_property PACKAGE_PIN Y9 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
create_clock -name sys_clk -period 10.000 [get_ports sys_clk]

## 2. Wejœcie z generatora TTL (pseudo-LVDS sygna³ aktywny)
set_property PACKAGE_PIN V5 [get_ports lvds_p]
set_property IOSTANDARD LVCMOS33 [get_ports lvds_p]

## 3. Martwe wejœcie lvds_n - podci¹gniête do GND przez FPGA
set_property PACKAGE_PIN V4 [get_ports lvds_n]
set_property IOSTANDARD LVCMOS33 [get_ports lvds_n]
set_property PULLDOWN true [get_ports lvds_n]

## 4. UART TX - wyjœcie na USB-UART (pin Y11)
set_property PACKAGE_PIN Y11 [get_ports tx]
set_property IOSTANDARD LVCMOS33 [get_ports tx]
