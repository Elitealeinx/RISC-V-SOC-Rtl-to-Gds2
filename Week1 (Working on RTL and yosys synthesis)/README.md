## 📘 Week 1 | Task 2  
#### 🔹 Verilog Simulation & Synthesis using **Icarus Verilog (iverilog)**, **GTKWave**, and **Yosys**

This task covers:
- ✅ Running Verilog simulations using **iverilog**  
- ✅ Viewing waveforms in **GTKWave**  
- ✅ Performing logic synthesis with **Yosys**

---

### ⚡ Task 2.1 – Verilog Simulation with `iverilog` & `gtkwave`

| 💻 Command | 📖 Description |
|------------|----------------|
| `iverilog -o output_file source_file.v testbench.v` | Compiles the **Verilog source file** and **testbench** into an executable `output_file`. |
| `vvp output_file` | Executes the compiled output_file and generates the waveform (.vcd file). |
| `gtkwave dump.vcd` | Opens the waveform dump file in **GTKWave** for signal visualization. |

👉 **Example Usage**:  
```bash
iverilog -o sim.out design.v tb_design.v
vvp sim.out
gtkwave dump.vcd
\```bash

---

### ⚡ Task 2.1 – Logic Synthesis with `yosys`

| 💻 Command | 📖 Description |
|------------|----------------|
| `yosys` | Launches the **yosys interactive shell**. |
| `read_verilog design.v` | Reads and loads the Verilog design file. |
| `synth -top design` | Synthesizes the design, specifying the **top module**. |
| `write_json design.json` | Exports the synthesized netlist in **JSON format**. |
| `write_verilog design_netlist.v` | Generates the synthesized gate-level **Verilog netlist**. |
| `show` | Displays a schematic diagram of the synthesized design (requires `xdot`). |

👉 **Example Yosys Script (`run_yosys.ys`)**:  
```tcl
read_verilog design.v
synth -top design
write_json design.json
write_verilog design_netlist.v
show
