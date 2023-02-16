# filename: build.tcl

# Assign part to in-memory project (will also create the in-memory project)
# Used when generating ip and executing synth, impl.
set part "xc7z020clg400-1" 

set_part $part

# read all design files
read_vhdl -vhdl2008 ../src/blinking_led.vhd


# read constraints
read_xdc ../constraints/pynq_z2.xdc

# synthesize design
synth_design -top blinking_led -part $part

# Opt design
opt_design

# place design
place_design

# rout design
route_design


# write out bitfile
write_debug_probes -force my_proj.ltx
write_bitstream -force my_proj.bit

