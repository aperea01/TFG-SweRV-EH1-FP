# 
# Report generation script generated by Vivado
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
proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}


start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param chipscope.maxJobs 3
  create_project -in_memory -part xc7a100tcsg324-1
  set_property board_part digilentinc.com:nexys-a7-100t:part0:1.2 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/alejandro/Alejandro/Universidad/TFG/RVfpga_V2.2_ENG/FPU_NewPipe_PrePostSync/project_1/project_1.cache/wt [current_project]
  set_property parent.project_path /home/alejandro/Alejandro/Universidad/TFG/RVfpga_V2.2_ENG/FPU_NewPipe_PrePostSync/project_1/project_1.xpr [current_project]
  set_property ip_output_repo /home/alejandro/Alejandro/Universidad/TFG/RVfpga_V2.2_ENG/FPU_NewPipe_PrePostSync/project_1/project_1.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  add_files -quiet /home/alejandro/Alejandro/Universidad/TFG/RVfpga_V2.2_ENG/FPU_NewPipe_PrePostSync/project_1/project_1.runs/synth_1/rvfpganexys.dcp
  read_xdc /home/alejandro/Alejandro/Universidad/TFG/RVfpga_V2.2_ENG/FPU_NewPipe_PrePostSync/src/rvfpganexys.xdc
  read_xdc /home/alejandro/Alejandro/Universidad/TFG/RVfpga_V2.2_ENG/FPU_NewPipe_PrePostSync/src/LiteDRAM/liteDRAM.xdc
  link_design -top rvfpganexys -part xc7a100tcsg324-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force rvfpganexys_opt.dcp
  create_report "impl_1_opt_report_drc_0" "report_drc -file rvfpganexys_drc_opted.rpt -pb rvfpganexys_drc_opted.pb -rpx rvfpganexys_drc_opted.rpx"
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  if { [llength [get_debug_cores -quiet] ] > 0 }  { 
    implement_debug_core 
  } 
  place_design 
  write_checkpoint -force rvfpganexys_placed.dcp
  create_report "impl_1_place_report_io_0" "report_io -file rvfpganexys_io_placed.rpt"
  create_report "impl_1_place_report_utilization_0" "report_utilization -file rvfpganexys_utilization_placed.rpt -pb rvfpganexys_utilization_placed.pb"
  create_report "impl_1_place_report_control_sets_0" "report_control_sets -verbose -file rvfpganexys_control_sets_placed.rpt"
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step phys_opt_design
set ACTIVE_STEP phys_opt_design
set rc [catch {
  create_msg_db phys_opt_design.pb
  phys_opt_design 
  write_checkpoint -force rvfpganexys_physopt.dcp
  close_msg_db -file phys_opt_design.pb
} RESULT]
if {$rc} {
  step_failed phys_opt_design
  return -code error $RESULT
} else {
  end_step phys_opt_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force rvfpganexys_routed.dcp
  create_report "impl_1_route_report_drc_0" "report_drc -file rvfpganexys_drc_routed.rpt -pb rvfpganexys_drc_routed.pb -rpx rvfpganexys_drc_routed.rpx"
  create_report "impl_1_route_report_methodology_0" "report_methodology -file rvfpganexys_methodology_drc_routed.rpt -pb rvfpganexys_methodology_drc_routed.pb -rpx rvfpganexys_methodology_drc_routed.rpx"
  create_report "impl_1_route_report_power_0" "report_power -file rvfpganexys_power_routed.rpt -pb rvfpganexys_power_summary_routed.pb -rpx rvfpganexys_power_routed.rpx"
  create_report "impl_1_route_report_route_status_0" "report_route_status -file rvfpganexys_route_status.rpt -pb rvfpganexys_route_status.pb"
  create_report "impl_1_route_report_timing_summary_0" "report_timing_summary -max_paths 10 -file rvfpganexys_timing_summary_routed.rpt -pb rvfpganexys_timing_summary_routed.pb -rpx rvfpganexys_timing_summary_routed.rpx -warn_on_violation "
  create_report "impl_1_route_report_incremental_reuse_0" "report_incremental_reuse -file rvfpganexys_incremental_reuse_routed.rpt"
  create_report "impl_1_route_report_clock_utilization_0" "report_clock_utilization -file rvfpganexys_clock_utilization_routed.rpt"
  create_report "impl_1_route_report_bus_skew_0" "report_bus_skew -warn_on_violation -file rvfpganexys_bus_skew_routed.rpt -pb rvfpganexys_bus_skew_routed.pb -rpx rvfpganexys_bus_skew_routed.rpx"
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force rvfpganexys_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force rvfpganexys.mmi }
  write_bitstream -force rvfpganexys.bit 
  catch {write_debug_probes -quiet -force rvfpganexys}
  catch {file copy -force rvfpganexys.ltx debug_nets.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

