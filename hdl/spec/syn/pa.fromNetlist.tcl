
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name spec_fmc_adc_100Ms -dir "/home/vladimir/CERN/fmc-adc-100m14b4cha-gw/hdl/spec/syn/planAhead_run_2" -part xc6slx45tfgg484-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/vladimir/CERN/fmc-adc-100m14b4cha-gw/hdl/spec/syn/spec_top_fmc_adc_100Ms_cs.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/vladimir/CERN/fmc-adc-100m14b4cha-gw/hdl/spec/syn} {../../ip_cores} }
set_property target_constrs_file "/home/vladimir/CERN/fmc-adc-100m14b4cha-gw/hdl/spec/spec_top_fmc_adc_100Ms.ucf" [current_fileset -constrset]
add_files [list {/home/vladimir/CERN/fmc-adc-100m14b4cha-gw/hdl/spec/spec_top_fmc_adc_100Ms.ucf}] -fileset [get_property constrset [current_run]]
link_design
