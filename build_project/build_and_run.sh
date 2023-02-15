#!/bin/bash
# Make sure to first source the <xilinx_install_path/vivado/<version>/settings64.sh file

# Build project
vivado -mode batch -source build.tcl
vivado -mode batch -source program_fpga.tcl





