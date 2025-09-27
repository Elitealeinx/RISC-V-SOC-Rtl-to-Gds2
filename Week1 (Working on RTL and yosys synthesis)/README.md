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
```
### ⚡ Task 2.2 – Logic Synthesis with `yosys`

| 💻 Command | 📖 Description |
|------------|----------------|
| `yosys` | Launches the **yosys interactive shell**. |
| `read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib` | Adding library file with yosys system. |
| `read_verilog design.v` | Reads and loads the Verilog design file. |
| `synth -top design` | Synthesizes the design, specifying the **top module**. |
| `abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib` | conneting .lib file to generate netlist. |
| `write_verilog design_netlist.v` | Generates the synthesized gate_level netlist verilog file. |
| `write_verilog -noattr design_netlist.v` | Generates the synthesized gate-level netlist without attributes. |
| `show -format pdf -prefix design.v design` | Generates netlist xdot and pdf file. |

👉 **Example Yosys Script**:  
```bash
yosys
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog mux.v
synth -top mux
abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
write_verilog mux_netlist.v
write_verilog -noattr mux_netlist.v
show -format pdf -prefix mux.v mux
```
