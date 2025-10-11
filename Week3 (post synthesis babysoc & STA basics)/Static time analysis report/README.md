## 🧠 Static Timing Analysis (STA) – Comprehensive Report

---

### **1. Introduction**

In modern integrated circuit (IC) design, ensuring that a digital circuit operates correctly at the desired clock frequency is one of the most critical challenges. As transistor sizes shrink and design complexities grow, verifying timing behavior becomes increasingly difficult.  
**Static Timing Analysis (STA)** is a cornerstone of digital design verification — a method used to validate the timing performance of a digital circuit without requiring exhaustive simulation of input vectors.

Unlike dynamic simulation, which checks timing using specific input patterns, STA analyzes the design’s timing paths statically by calculating the delays of all logic paths based on the cell and interconnect characteristics. This enables engineers to verify whether the circuit meets its **setup** and **hold** constraints under all operating conditions.

STA is a key step in the **VLSI design flow**, particularly after synthesis and physical implementation (placement and routing). It ensures that every timing path in the design can transfer signals within the allocated clock period, thereby guaranteeing correct sequential operation.

---

### **2. Fundamentals of Static Timing Analysis**

#### **2.1 Timing Paths**

In STA, the design is represented as a **timing graph**, where:
- **Nodes** represent pins or ports (start and end points of signals).  
- **Edges** represent delays between these nodes.

Each **timing path** consists of three main components:
1. **Startpoint:** Usually a flip-flop output, input port, or clock source.  
2. **Combinational Path:** A series of logic gates and interconnects.  
3. **Endpoint:** Typically a flip-flop input or output port.

#### **2.2 Key Timing Parameters**

- **Propagation Delay (tpd):** The time taken for a signal to propagate from input to output of a gate.  
- **Setup Time:** The minimum time that data must be stable before the active clock edge.  
- **Hold Time:** The minimum time data must remain stable after the active clock edge.  
- **Clock Skew:** The difference in arrival times of the clock signal at different flip-flops.  
- **Clock Jitter:** The short-term variation of the clock edge timing.

#### **2.3 Slack Calculation**

The concept of **slack** determines whether a timing path meets or violates timing requirements:

- **Setup Slack = Required Arrival Time − Actual Arrival Time**  
- **Hold Slack = Actual Arrival Time − Required Arrival Time**

A **positive slack** indicates the path meets timing, while a **negative slack** means a timing violation.

---

### **3. STA Methodology**

#### **3.1 Input Requirements**

To perform STA, the following input files are needed:

| File Type | Description |
|------------|--------------|
| **Verilog Netlist** | Gate-level design after synthesis or place-and-route. |
| **SDC File** | Timing constraints (clock definitions, input/output delays). |
| **LIB Files** | Standard cell library files containing delay and timing data. |
| **SPEF File** | Parasitic extraction file capturing interconnect resistance and capacitance. |
| **DEF/GDS Files** | Physical layout data (used for RC extraction). |

#### **3.2 STA Flow**

1. **Read Design Files:** Load the netlist, timing libraries, and constraints.  
2. **Read Parasitics:** Import the SPEF file to account for interconnect delays.  
3. **Clock Definition:** Define clocks using SDC to specify clock frequency, waveform, and uncertainties.  
4. **Path Analysis:** STA tool computes the arrival and required times for each timing path.  
5. **Report Generation:** Generates detailed reports showing **WNS (Worst Negative Slack)** and **TNS (Total Negative Slack)**.  
6. **Optimization:** Designers fix timing violations by buffering, resizing, or logic restructuring.

---

### **4. Post-Placement STA with OpenSTA**

#### **4.1 Overview**

**OpenSTA** is an open-source, industry-grade tool used to perform static timing analysis. It is part of the **OpenROAD** ecosystem and supports standard formats like Verilog, SDC, and SPEF.  
It provides comprehensive timing reports for various **PVT (Process, Voltage, Temperature)** corners.

After placement and routing, parasitic information becomes available. Performing **post-placement STA** ensures accurate delay estimation by considering real interconnect resistances and capacitances.

---

#### **4.2 Example Setup**

Below is an example TCL script used to perform post-placement STA on a SoC design (`vsdbabysoc`) using the **Sky130HD** technology library.

```tcl
# Post-Placement STA TCL Script

# Design Configuration
export DESIGN_NAME = vsdbabysoc
export PLATFORM    = sky130hd

# Verilog Sources
read_verilog /path/to/vsdbabysoc.v
read_verilog /path/to/rvmyth.v
read_verilog /path/to/clk_gate.v

# Constraints and Libraries
read_sdc /path/to/vsdbabysoc_synthesis.sdc
read_liberty /path/to/sky130_fd_sc_hd__tt_025C_1v80.lib

# Parasitic Information
read_spef /path/to/vsdbabysoc.spef

# Define Clock
create_clock -name clk -period 20 [get_ports CLK]

# Timing Analysis
report_checks -path_delay min_max -fields {slew capacitance}
report_tns
report_wns
