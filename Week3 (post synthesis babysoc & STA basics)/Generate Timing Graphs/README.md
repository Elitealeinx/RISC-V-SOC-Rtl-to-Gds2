# 🧠 Post-Placement Static Timing Analysis (STA) using OpenSTA

This project demonstrates **Post-Placement Static Timing Analysis (STA)** for the **vsdbabysoc** design using **OpenSTA** and the **Sky130 PDK**.  
After routing, STA helps verify that the design meets timing constraints such as **setup** and **hold** requirements before fabrication.

---

## 📘 Overview

- **SPEF file** → Contains extracted parasitic details (resistance & capacitance) after routing.  
- **Post-placement Verilog file** → Represents the gate-level netlist after placement and routing.  
- **OpenSTA** → Used to perform static timing checks across multiple **PVT corners** (Process, Voltage, Temperature).  

The goal is to ensure that timing requirements are met under all operating conditions and to identify any critical paths or timing violations.

---

## ⚙️ STA TCL Script

Below is the example **TCL script** used to perform STA across the available PVT corners using the **Sky130HD** libraries.

```tcl
# -----------------------------
# Post-Placement STA TCL Script
# -----------------------------

# Design Configuration
export DESIGN_NICKNAME = vsdbabysoc
export DESIGN_NAME     = vsdbabysoc
export PLATFORM        = sky130hd

# Verilog Source Files
export VERILOG_FILES = $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/vsdbabysoc.v \
                       $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/rvmyth.v \
                       $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/clk_gate.v

# Constraint File
export SDC_FILE = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/vsdbabysoc_synthesis.sdc

# Directory Paths
export vsdbabysoc_DIR = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)
export VERILOG_INCLUDE_DIRS = $(wildcard $(vsdbabysoc_DIR)/include/)

# Additional Inputs
export ADDITIONAL_GDS  = $(wildcard $(vsdbabysoc_DIR)/gds/*.gds.gz)
export ADDITIONAL_LEFS = $(wildcard $(vsdbabysoc_DIR)/lef/*.lef)

# Clock Configuration
export CLOCK_PORT = CLK
export CLOCK_NET  = $(CLOCK_PORT)

# Floorplan Settings
export DIE_AREA  = 0 0 1600 1600
export CORE_AREA = 20 20 1590 1590

# Placement Config
export PLACE_PINS_ARGS = -exclude left:0-600 -exclude left:1000-1600: -exclude right:* -exclude top:* -exclude bottom:*
export TNS_END_PERCENT = 100
export REMOVE_ABC_BUFFERS = 1

# CTS and Magic Settings
export CTS_BUF_DISTANCE = 600
export SKIP_GATE_CLONING = 1
export MAGIC_ZEROIZE_ORIGIN = 0
export MAGIC_EXT_USE_GDS = 1
