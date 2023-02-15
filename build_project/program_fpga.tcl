open_hw_manager
connect_hw_server -url localhost:3121
open_hw_target
set_property PROGRAM.FILE {my_proj.bit} [lindex [get_hw_devices] 1]
program_hw_devices [lindex [get_hw_devices] 1]
close_hw_target
close_hw_manager


