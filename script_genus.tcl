read_lib /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl alu_rd.v 
elaborate
read_sdc input_constraint.sdc
syn_generic
syn_map
syn_opt

write_netlist > alu_rd_netlist.v

write_sdc > gate_output_constraint.sdc

report area > ../reports/syn_area.rpt
report timing > ../reports/syn_timing.rpt
report power > ../reports/syn_power.rpt
