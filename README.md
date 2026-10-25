# 4-Bit Arithmetic Logic Unit (ALU) & Combinational Logic

## Overview
A hardware implementation of a 4-bit Arithmetic Logic Unit (ALU) and supporting combinational logic, designed in SystemVerilog and targeted for the Digilent Basys 3 FPGA. 

![Demo Video](link-to-your-portfolio-video-or-gif)

## Hardware & Toolchain
* **Hardware:** Digilent Basys 3 Artix-7 FPGA
* **Language:** SystemVerilog
* **EDA Tool:** AMD Xilinx Vivado

## Architecture & Features
* **4-Bit ALU:** Implements core arithmetic and bitwise logic operations.
* **Combinational Logic Components:** Includes 3:8 decoders and multiplexed display logic for the seven-segment displays.
* **Hazard-Free Design:** Implemented hazard-free majority circuits, rigorously analyzed for gate-level propagation delays.
* **Physical Constraints:** Mapped I/O using a custom XDC constraints file to interface with the Basys 3 onboard switches, buttons, and LEDs.

## Verification
* Pre-synthesis behavioral simulation verified using Vivado testbenches.
* Post-implementation timing and gate-level propagation analysis to ensure stable outputs before bitstream generation.
