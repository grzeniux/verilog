###Clock signal
#set_property -dict { PACKAGE_PIN Y9   IOSTANDARD LVCMOS33 } [get_ports { CLK }]; # 100MHz
#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { CLK }];

#set_property PACKAGE_PIN R4 [get_ports { CLK }]
#set_property IOSTANDARD LVCMOS33 [get_ports { CLK }]
#create_clock -period 10.0 -name CLK [get_ports { CLK }]

# Zegar (100 MHz - GCLK)
set_property PACKAGE_PIN Y9 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -name clk -period 10.000 [get_ports clk]

##Switches
#set_property -dict { PACKAGE_PIN F22   IOSTANDARD LVCMOS18 } [get_ports { SW[0] }]; # Sch=SW0
#set_property -dict { PACKAGE_PIN G22   IOSTANDARD LVCMOS18 } [get_ports { SW[1] }]; # Sch=SW1
#set_property -dict { PACKAGE_PIN H22   IOSTANDARD LVCMOS18 } [get_ports { SW[2] }]; # Sch=SW2
#set_property -dict { PACKAGE_PIN F21   IOSTANDARD LVCMOS18 } [get_ports { SW[3] }]; # Sch=SW3


###Buttons
#set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS18 } [get_ports { BTN[0] }]; # Sch=BTNC
#set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS18 } [get_ports { BTN[1] }]; # Sch=BTND
#set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS18 } [get_ports { BTN[2] }]; # Sch=BTNL
#set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS18 } [get_ports { BTN[3] }]; # Sch=BTNR
##set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS18 } [get_ports { BTNU }];  # Sch=BTNU

##LEDs
#set_property -dict { PACKAGE_PIN T22   IOSTANDARD LVCMOS33 } [get_ports { PWM_OUT[0] }]; # Sch=LED0
#set_property -dict { PACKAGE_PIN T21   IOSTANDARD LVCMOS33 } [get_ports { PWM_OUT[1] }]; # Sch=LED1
#set_property -dict { PACKAGE_PIN U22   IOSTANDARD LVCMOS33 } [get_ports { PWM_OUT[2] }]; # Sch=LED2
#set_property -dict { PACKAGE_PIN U21   IOSTANDARD LVCMOS33 } [get_ports { PWM_OUT[3] }]; # Sch=LED3

##Pmod Header JA
#set_property -dict { PACKAGE_PIN Y11   IOSTANDARD LVCMOS33 } [get_ports { PWM_OUT[0] }]; # Sch=JA1
#set_property -dict { PACKAGE_PIN AA11  IOSTANDARD LVCMOS33 } [get_ports { PWM_OUT[1] }]; # Sch=JA2
#set_property -dict { PACKAGE_PIN Y10   IOSTANDARD LVCMOS33 } [get_ports { PWM_OUT[2] }]; # Sch=JA3
#set_property -dict { PACKAGE_PIN AA9   IOSTANDARD LVCMOS33 } [get_ports { PWM_OUT[3] }]; # Sch=JA4


# JD2 - rĂłĹĽnicowe wejĹ›cie LVDS (Bank 13, VCCO = 3.3V)
#set_property PACKAGE_PIN V4 [get_ports lvds_in_n] ; # JD2_N
#set_property PACKAGE_PIN V5 [get_ports lvds_in_p] ; # JD2_P
#set_property IOSTANDARD LVCMOS33 [get_ports {lvds_in_p lvds_in_n}]

# UART TX
set_property PACKAGE_PIN Y11 [get_ports uart_tx];
set_property IOSTANDARD LVCMOS33 [get_ports uart_tx]

# UART RX 
set_property PACKAGE_PIN AA11 [get_ports uart_rx];
set_property IOSTANDARD LVCMOS33 [get_ports uart_rx]

##########################

set_property PACKAGE_PIN V5 [get_ports lvds_trigger]         ;# JD2_P
set_property IOSTANDARD LVCMOS33 [get_ports lvds_trigger]


# Przycisk BTND ? trigger
set_property PACKAGE_PIN R16 [get_ports btn_trigger]
set_property IOSTANDARD LVCMOS18 [get_ports btn_trigger]

# Przycisk BTNR ? test
set_property PACKAGE_PIN R18 [get_ports btn_test]
set_property IOSTANDARD LVCMOS18 [get_ports btn_test]

# LD3 ? trigger LED
set_property PACKAGE_PIN U21 [get_ports led]
set_property IOSTANDARD LVCMOS33 [get_ports led]

# LD4 ? test LED
set_property PACKAGE_PIN V22 [get_ports led_test]
set_property IOSTANDARD LVCMOS33 [get_ports led_test]
