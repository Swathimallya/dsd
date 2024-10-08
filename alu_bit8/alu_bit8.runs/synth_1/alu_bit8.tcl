# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
create_project -in_memory -part xc7s50csga324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/swath/alu_bit8/alu_bit8.cache/wt [current_project]
set_property parent.project_path C:/Users/swath/alu_bit8/alu_bit8.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/swath/alu_bit8/alu_bit8.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/swath/add_sub/add_sub.srcs/sources_1/new/add_sub.v
  C:/Users/swath/bcd_to_8s/bcd_to_8s.srcs/sources_1/new/bcd_to_8s.v
  C:/Users/swath/binary_to_bcd/binary_to_bcd.srcs/sources_1/new/binary_to_bcd.v
  C:/Users/swath/clk_1hz/clk_1hz.srcs/sources_1/new/clk_1hz.v
  C:/Users/swath/comp_8bit/comp_8bit.srcs/sources_1/new/comp_8bit.v
  C:/Users/swath/fsm_moore/fsm_moore.srcs/sources_1/new/fsm_moore.v
  C:/Users/swath/jkff_down/jkff_down.srcs/sources_1/new/jkff_down.v
  C:/Users/swath/jkff_up/jkff_up.srcs/sources_1/new/jkff_up.v
  C:/Users/swath/LACA_4bit/LACA_4bit.srcs/sources_1/new/laca_4bit.v
  C:/Users/swath/laca_8bits/laca_8bits.srcs/sources_1/new/laca_8bits.v
  C:/Users/swath/multiplier_4x4/multiplier_4x4.srcs/sources_1/new/multiplier_4x4.v
  C:/Users/swath/sync_8bit/sync_8bit.srcs/sources_1/new/sync_8bit.v
  C:/Users/swath/sync_down_8bit/sync_down_8bit.srcs/sources_1/new/sync_down_8bit.v
  C:/Users/swath/alu_bit8/alu_bit8.srcs/sources_1/new/alu_bit8.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/swath/alu_bit8/alu_bit8.srcs/constrs_1/new/alu_bit8.xdc
set_property used_in_implementation false [get_files C:/Users/swath/alu_bit8/alu_bit8.srcs/constrs_1/new/alu_bit8.xdc]


synth_design -top alu_bit8 -part xc7s50csga324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef alu_bit8.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file alu_bit8_utilization_synth.rpt -pb alu_bit8_utilization_synth.pb"
