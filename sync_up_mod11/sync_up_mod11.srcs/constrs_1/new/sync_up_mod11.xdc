#
#
#
#
set_propert_dict{PACKAGE_PIN F14 IOSTANDARD LVCMOSS33}{get_ports clk}
set_propert_dict{PACKAGE_PIN K1 IOSTANDARD LVCMOSS33}{get_ports reset}

set_property PACKAGE_PIN G1 [get_ports {q[0]}]
set_property PACKAGE_PIN F2 [get_ports {q[3]}]

set_property PACKAGE_PIN F14 [get_ports clk_out]
set_property PACKAGE_PIN G2 [get_ports {q[1]}]
set_property PACKAGE_PIN F1 [get_ports {q[2]}]
set_property PACKAGE_PIN K1 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports {q[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports clk_out]
set_property IOSTANDARD LVCMOS33 [get_ports {q[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
