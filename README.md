# RISCV-RV32I-Core
Verilog implementation of a RISC-V RV32I core featuring a complete fetch-decode-execute datapath, validated via simulation and deployed on an FPGA
## Architecture & Schematics
- 📄 [View the full RTL Schematic (PDF)](./docs/RISC-V.pdf)
![RTL Schematic](./docs/schematic_preview.png)
### Fibonacci Sequence Hardware Verification
To demonstrate the functional correctness of the instruction fetch-decode-execute path on physical hardware, a compiled assembly program calculating the Fibonacci sequence was loaded into the instruction memory. 

The CPU clock was divided down to 1 Hz, and the internal register containing the current Fibonacci sum was routed to the Basys 3 onboard 7-segment display, showing the real-time execution of the algorithm.
