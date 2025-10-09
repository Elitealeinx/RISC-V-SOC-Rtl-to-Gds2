## Gate-Level Simulation (GLS) of BabySoC

### 🧩 Overview
**Gate-Level Simulation (GLS)** is performed after synthesis to verify that the BabySoC design functions correctly when represented at the gate level. Unlike RTL (Register Transfer Level) simulations, which operate at a higher abstraction, GLS works on the synthesized **netlist** — composed of actual logic gates and interconnections used in hardware implementation.

---

### 🎯 Purpose of GLS
The primary objective of GLS is to ensure that the synthesized design behaves exactly as intended, both functionally and temporally. It acts as a bridge between RTL verification and physical implementation.

---

### ⚙️ Key Features for BabySoC

#### 1. Timing Verification
- GLS utilizes **Standard Delay Format (SDF)** files to incorporate realistic timing delays.
- Timing simulations validate that the SoC performs correctly under real-world conditions and meets setup/hold requirements.

#### 2. Post-Synthesis Functional Validation
- Confirms that the logic functionality of the synthesized gate-level design matches the RTL version.
- Detects issues such as **metastability**, **glitches**, or **timing violations** that may not appear during RTL simulation.

#### 3. Simulation Tools
Common tools for performing GLS include:
- **Icarus Verilog** – for compiling and simulating the gate-level netlist.
- **GTKWave** – for visualizing and analyzing waveform outputs.

Example simulation flow:
```bash
# Compile the gate-level netlist with timing annotations
iverilog -DFUNCTIONAL -I ./include -s testbench gate_level_netlist.v sdf_annotation.sdf

# Run the simulation
vvp a.out

# View waveforms
gtkwave dump.vcd
```
