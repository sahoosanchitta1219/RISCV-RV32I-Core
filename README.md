# RISCV-RV32I-Core
Verilog implementation of a RISC-V RV32I core featuring a complete fetch-decode-execute datapath, validated via simulation and deployed on an FPGA
## Architecture & Schematics
📄 [View the full RTL Schematic (PDF)](./docs/RISC-V (1).pdf)
### Fibonacci Sequence Hardware Verification
To demonstrate the functional correctness of the instruction fetch-decode-execute path on physical hardware, a compiled assembly program calculating the Fibonacci sequence was loaded into the instruction memory. 

The CPU clock was divided down to 1 Hz, and the internal register containing the current Fibonacci sum was routed to the Basys 3 onboard 7-segment display, showing the real-time execution of the algorithm.

## How to Run

### Simulation
1. Open Xilinx Vivado.
2. Add all files from the `/rtl` and `/sim` directories.
3. Run the behavioral simulation to view the testbench execution.

### Synthesis & Implementation
1. Target a Basys 3 FPGA board (XC7A35T)[cite: 1].
2. Include the constraint file from `/constraints/pins.xdc`.
3. Run Synthesis and Implementation to generate the bitstream.
