# ALU – RTL to GDSII Flow

## Overview
This project demonstrates a complete RTL to GDSII implementation of an 8-bit
Arithmetic Logic Unit (ALU)[8 operation].

## Supported Operations
- Addition
- Subtraction
- Multiplication
- Bitwise AND
- Comparison (greater than, less than)
- Bitwise NOT

## Project Structure
- rtl/        : Verilog RTL design
- tb/         : Functional verification
- synthesis/  : Genus synthesis scripts and LEC setup
- netlist/    : Gate-level synthesized netlist
- place_route/: Innovus backend outputs

## Tools Used
- Verilog HDL(incisive)
- Cadence Genus
- Cadence Innovus
- Cadence LEC(conformal)

## Author
Deepthi D
