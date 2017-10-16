# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7k70tfbv676-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/steven/Desktop/Lectures/3-2/DigitalSystem/PreLab01/PreLab01.cache/wt [current_project]
set_property parent.project_path /home/steven/Desktop/Lectures/3-2/DigitalSystem/PreLab01/PreLab01.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/steven/Desktop/Lectures/3-2/DigitalSystem/PreLab01/PreLab01.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib /home/steven/Desktop/Lectures/3-2/DigitalSystem/PreLab01/PreLab01.srcs/sources_1/new/Encoder.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top Encoder -part xc7k70tfbv676-1


write_checkpoint -force -noxdef Encoder.dcp

catch { report_utilization -file Encoder_utilization_synth.rpt -pb Encoder_utilization_synth.pb }
