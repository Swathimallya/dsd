set_property -dict{PACKAGE_PIN K2 IOSTANDARD LVCMOS33} {get_ports x}
set_property -dict{PACKAGE_PIN F14 IOSTANDARD LVCMOS33} {get_ports clk}
set_property -dict{PACKAGE_PIN K1 IOSTANDARD LVCMOS33} {get_ports rt}
set_property -dict{PACKAGE_PIN G2 IOSTANDARD LVCMOS33} {get_ports clkd}
set_property -dict{PACKAGE_PIN G1 OSTANDARD LVCMOS33} {get_ports y}

set_property PACKAGE_PIN K1 [get_ports rt]
set_property PACKAGE_PIN G2 [get_ports clkd]
set_property PACKAGE_PIN K2 [get_ports x]
set_property PACKAGE_PIN G1 [get_ports y]
set_property PACKAGE_PIN F14 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports rt]
set_property IOSTANDARD LVCMOS33 [get_ports clkd]
set_property IOSTANDARD LVCMOS33 [get_ports x]
set_property IOSTANDARD LVCMOS33 [get_ports y]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
