🚀 P_DINESH_WEEK_2_RISC_V_SoC_Tapeout_Program_VSD
Overview:
BabySoC is a simplified, open-source SoC built around the RVMYTH processor core, a RISC-V-based CPU. It integrates a Phase-Locked Loop (PLL) for precise clock generation and a 10-bit Digital-to-Analog Converter (DAC) for interfacing with external analog systems. While the DAC allows BabySoC to interact with devices such as televisions or mobile phones by converting digital signals to analog, this task emphasizes understanding the internal digital behavior through simulation.

Focus on:
What is a System-on-Chip (SoC)?
Components of a typical SoC (CPU, memory, peripherals, interconnect).
Why BabySoC is a simplified model for learning SoC concepts.
The role of functional modelling before RTL and physical design stages.
Tools Used for BabySoC Design
1️⃣ Icarus Verilog (iverilog):

Used for compiling and simulating the BabySoC RTL modules.
Allows verification of functional behavior of the SoC components like CPU, PLL, and DAC.
2️⃣ GTKWave:

Used for visualizing simulation waveforms.
Helps analyze signal interactions, timing, and system behavior in a graphical form.
What is a System on a Chip (SoC)?
A System on a Chip (SoC) is a highly integrated circuit that functions like a mini-computer built onto a single chip. Instead of requiring separate physical parts for each function, an SoC combines all the necessary components into one small package.

This design is essential for devices where

space, power, and efficiency are critical, such as smartphones, smartwatches, and tablets.

1️⃣ Introduction to VSDBabySoC
The VSDBabySoC (or BabySoC) is a small yet highly capable SoC with a primary objective of being an educational platform. It was designed to facilitate the simultaneous testing of three specific open-source intellectual property (IP) cores for the first time while also allowing for the calibration of its analog components.

Initialization and Clock Generation: Upon receiving an initial input signal, BabySoC activates the PLL. The PLL generates a stable and synchronized clock signal, which is essential for coordinating the activities of the RVMYTH processor and DAC. By synchronizing the system, the PLL ensures that all components operate in harmony, avoiding timing mismatches and ensuring data integrity.

Data Processing in RVMYTH: Within BabySoC, RVMYTH plays a central role in processing data. Specifically, it utilizes its r17 register to hold and cycle through values that are used by the DAC. As RVMYTH executes instructions, it sequentially updates r17 with new data, preparing it for analog conversion. This cyclical processing allows BabySoC to generate continuous data streams that the DAC can output.

Analog Signal Generation via DAC: The DAC receives the processed digital values from RVMYTH and converts them into an analog signal. This output, saved in a file named OUT, can be fed to external devices like TVs and mobile phones, which interpret the analog signals to produce sound or video. This functionality enables BabySoC to interface with consumer electronics, showcasing how digital data can drive multimedia outputs in real-world applications.

image image image
2️⃣ BabySoC Key Components
The BabySoC integrates both digital and analog parts, including:

RVMYTH Microprocessor (RISC-V CPU): This is the brain of the BabySoC, an open-source, customizable CPU that handles all the processing tasks and communicates with the other parts of the system.

8x Phase-Locked Loop (PLL): The PLL generates a stable and synchronized clock signal to ensure all components—the RVMYTH processor and the DAC—operate in harmony and avoid timing mismatches.

10-bit Digital-to-Analog Converter (DAC): The DAC's function is to receive digital signals from the RVMYTH processor and convert them into an analog output signal.

3️⃣ BabySoC Uses and Functionality
The main use of the BabySoC is tied to its capability for digital-analog interfacing and its educational purpose:

Digital-Analog Interfacing: The 10-bit DAC allows the BabySoC to communicate with external analog devices.

Multimedia Output: By converting the processed digital values into an analog signal, the DAC enables the SoC to provide output in the form of audio or video.

External Device Connectivity: This analog output can be fed to external devices that interpret analog signals, such as televisions and mobile phones.

Educational Platform: The Sky130-technology-based SoC is intended to provide a highly documented platform for learning and experimentation in modern embedded systems design and digital-analog interfacing

🚀Types of SoCs
Microcontroller-Based SoC: These SoCs are centered around a microcontroller, optimized for simple control tasks in everyday devices. Known for their low power consumption and high efficiency, they are ideal for applications such as home appliances, automotive systems, and IoT devices, where minimal processing and energy savings are crucial.

Microprocessor-Based SoC: Featuring a microprocessor, these SoCs are capable of handling more demanding workloads and running full operating systems. They are commonly used in smartphones, tablets, and other devices that require multitasking and support for complex applications, providing the higher computational power necessary for interactive and data-intensive tasks.

Application-Specific SoC (ASIC): Designed for specialized, high-performance tasks, these SoCs excel in areas such as graphics processing, network management, and multimedia applications. Optimized for speed and efficiency in their specific roles, they are often deployed in graphics cards, AI accelerators, and specialized industrial or financial systems that demand fast and precise computation.

SoC Design Flow image

⚡Key Parts of a General System on a Chip (SoC)
BabySoC – System-on-Chip Educational Platform
What is a System-on-Chip (SoC)?
Feature	Description
Definition	A System-on-Chip (SoC) is a highly integrated circuit that functions like a mini-computer on a single chip.
Integration	Combines all necessary components into a single compact package.
Importance	Essential for devices where space, power, and efficiency are critical, such as smartphones, smartwatches, and tablets.
Key Parts of a System-on-Chip (SoC)
Component	Description
CPU (Central Processing Unit)	The brain of the SoC, handling all main instructions and decisions. Manages tasks such as calculations, data processing, and running applications.
Memory	- RAM (Random Access Memory): Temporarily stores data while the device is running.
- ROM/Flash Storage: Stores information permanently, retaining data even when the device is powered off.
I/O Ports (Input/Output)	Connects the SoC to external devices like cameras, USB peripherals, sensors, or headphones. Enables the SoC to send and receive data externally.
GPU (Graphics Processing Unit)	Responsible for rendering visuals on displays. Handles gaming, video playback, animations, and graphical interfaces.
DSP (Digital Signal Processor)	Specialized processor for handling audio, video, and other signal processing tasks. Improves sound quality, reduces noise, and enhances multimedia performance.
Power Management Unit (PMU)	Regulates power consumption to ensure efficient operation. Crucial for extending battery life in portable devices and maintaining stable performance.
Special Features / IP Blocks	Additional modules like Wi-Fi, Bluetooth, security cores, cryptography engines, AI accelerators, or dedicated hardware for machine learning. Varies depending on SoC purpose.
Clock & Timing Units	Manages system timing, often with integrated PLL (Phase-Locked Loops), ensuring synchronous operation of CPU, memory, and peripherals.
Analog Components / DACs	Converts digital signals into analog output for audio, video, or interfacing with sensors and external analog devices. Often used in multimedia and embedded applications.
Introduction to VSDBabySoC
Feature	Description
Purpose	Small yet highly capable SoC designed as an educational platform.
Features	- Simultaneous testing of three open-source IP cores
- Calibration of analog components
BabySoC Key Components
Component	Description
RVMYTH Microprocessor (RISC-V CPU)	Brain of the SoC; handles all processing tasks and communicates with other components.
8x Phase-Locked Loop (PLL)	Generates stable, synchronized clock signals; ensures CPU and DAC operate in harmony.
10-bit Digital-to-Analog Converter (DAC)	Converts digital signals from RVMYTH processor into analog output.
BabySoC Uses and Functionality
Use	Description
Digital-Analog Interfacing	DAC allows communication with external analog devices.
Multimedia Output	Converts processed digital values into audio or video signals.
External Device Connectivity	Analog output can be fed to TVs, mobile phones, and other devices.
Educational Platform	Sky130-based SoC provides a well-documented platform for learning modern embedded systems and digital-analog interfacing.
⚡VSDBabySoC Simulation & Synthesis Flow
Project Structure
src/include/ - Contains header files (*.vh) with necessary macros or parameter definitions.
src/module/ - Contains Verilog files for each module in the SoC design.
output/ - Directory where compiled outputs and simulation files will be generated.
#Setup and Prepare Project Directory Clone or set up the directory structure as follows:

https://github.com/manili/VSDBabySoC.git
bash
├── copy_past.txt
├── images
│   ├── centralized_avsddac.png
│   ├── inside_dac.png
│   ├── inside_pll.png
│   ├── openlane_flow.png
│   ├── physical_design.png
│   ├── post_routing_sim.png
│   ├── post_synth_sim.png
│   ├── pre_synth_sim.png
│   ├── rvmyth_layout.png
│   ├── selected_dac.png
│   ├── selected_pll.png
│   ├── vsdbabysoc_block_diagram.png
│   └── vsdbabysoc_layout.png
├── LICENSE
├── Makefile
├── my_project_images
├── output
│   ├── post_synth_sim
│   │   ├── post_synth_sim.out
│   │   └── post_synth_sim.vcd
│   └── pre_synth_sim
│       ├── mkdir
│       ├── post_synth_sim.out
│       └── pre_synth_sim.out
├── output_@
│   ├── post_synth_sim
│   │   ├── post_routing_sim.vcd
│   │   └── post_synth_sim.out
│   └── pre_synth_sim
│       ├── post_synth_sim.vcd
│       ├── pre_synth_sim.out
│       └── pre_synth_sim.vcd
├── README.md
├── sp_env
│   ├── bin
│   │   ├── activate
│   │   ├── activate.csh
│   │   ├── activate.fish
│   │   ├── Activate.ps1
│   │   ├── normalizer
│   │   ├── pip
│   │   ├── pip3
│   │   ├── pip3.12
│   │   ├── python -> python3
│   │   ├── python3 -> /usr/bin/python3
│   │   ├── python3.12 -> python3
│   │   └── sandpiper-saas
│   ├── include
│   │   └── python3.12
│   ├── lib
│   │   └── python3.12
│   │       └── site-packages
│   ├── lib64 -> lib
│   └── pyvenv.cfg
├── src
│   ├── gds
│   │   ├── avsddac.gds
│   │   └── avsdpll.gds
│   ├── gls_model
│   │   ├── primitives.v
│   │   └── sky130_fd_sc_hd.v
│   ├── include
│   │   ├── sandpiper_gen.vh
│   │   ├── sandpiper.vh
│   │   ├── sp_default.vh
│   │   └── sp_verilog.vh
│   ├── layout_conf
│   │   ├── rvmyth
│   │   │   ├── config.tcl
│   │   │   └── pin_order.cfg
│   │   └── vsdbabysoc
│   │       ├── config.tcl
│   │       ├── macro.cfg
│   │       └── pin_order.cfg
│   ├── lef
│   │   ├── avsddac.lef
│   │   └── avsdpll.lef
│   ├── lib
│   │   ├── avsddac.lib
│   │   ├── avsdpll.lib
│   │   └── sky130_fd_sc_hd__tt_025C_1v80.lib
│   ├── module
│   │   ├── avsddac.v
│   │   ├── avsdpll.v
│   │   ├── clk_gate.v
│   │   ├── primitives.v
│   │   ├── pseudo_rand_gen.sv
│   │   ├── pseudo_rand.sv
│   │   ├── rvmyth_gen.v
│   │   ├── rvmyth.tlv
│   │   ├── rvmyth.v
│   │   ├── sky130_fd_sc_hd.v
│   │   ├── testbench.rvmyth.post-routing.v
│   │   ├── testbench.v
│   │   ├── vsdbabysoc.synth.v
│   │   └── vsdbabysoc.v
│   ├── script
│   │   ├── sta.conf
│   │   ├── verilog_to_lib.pl
│   │   └── yosys.ys
│   └── sdc
│       ├── vsdbabysoc_layout.sdc
│       └── vsdbabysoc_synthesis.sdc
├── vsdbabysoc.synth_1.v
└── vsdbabysoc.synth.v
🔗 Cloning the Project
To begin, clone the VSDBabySoC repository using the following command:

git clone https://github.com/manili/VSDBabySoC.git

cd ~/VLSI/VSDBabySoC/

ls VSDBabySoC/
images  LICENSE  Makefile  README.md  src

DINESH@UBUNTU:~/Desktop/my_project$ cd VSDBabySoC/
DINESH@UBUNTU:~/Desktop/my_project/VSDBabySoC$ ls
copy_past.txt  images  LICENSE  Makefile  my_project_images  output  output_@  README.md  sp_env  src  vsdbabysoc.synth_1.v  vsdbabysoc.synth.v
DINESH@UBUNTU:~/Desktop/my_project/VSDBabySoC$ cd src/module/
DINESH@UBUNTU:~/Desktop/my_project/VSDBabySoC/src/module$ l
avsddac.v  clk_gate.v    pseudo_rand_gen.sv  rvmyth_gen.v  rvmyth.v           testbench.rvmyth.post-routing.v  vsdbabysoc.synth.v
avsdpll.v  primitives.v  pseudo_rand.sv      rvmyth.tlv    sky130_fd_sc_hd.v  testbench.v*                     vsdbabysoc.v
TLV to Verilog Conversion for RVMYTH
Initially, you will see only the rvmyth.tlv file inside src/module/, since the RVMYTH core is written in TL-Verilog. To convert it into a .v file for simulation, follow the steps below: 🔧 TLV to Verilog Conversion Steps

# Step 1: Install python3-venv (if not already installed)
sudo apt update
sudo apt install python3-venv python3-pip

# Step 2: Create and activate a virtual environment
cd VSDBabySoC/
python3 -m venv sp_env
source sp_env/bin/activate

# Step 3: Install SandPiper-SaaS inside the virtual environment
pip install pyyaml click sandpiper-saas

# Step 4: Convert rvmyth.tlv to Verilog
sandpiper-saas -i ./src/module/*.tlv -o rvmyth.v --bestsv --noline -p verilog --outdir ./src/module/
VSDBabySoC RTL to Gate-Level Simulation Flow
1️⃣ Pre-Synthesis Simulation:
Compile RTL with Icarus Verilog
Macro: -DPRE_SYNTH_SIM
Purpose: Verify RTL functionality before synthesis
Output: output/pre_synth_sim/pre_synth_sim.out and waveform .vcd
Run the following command to perform a pre-synthesis simulation:

iverilog -o output/pre_synth_sim/pre_synth_sim.out   -DPRE_SYNTH_SIM   -I src/include   -I src/module   src/module/testbench.v
PRE_SYNTH_SCREENSHOT
DINESH@UBUNTU:~/Desktop/my_project/VSDBabySoC/output$ cd pre_synth_sim/
DINESH@UBUNTU:~/Desktop/my_project/VSDBabySoC/output/pre_synth_sim$ ls
post_synth_sim.out  pre_synth_sim.out
PRE_SYNTH_SCREENSHOT_1 PRE_SYNTH_SCREENSHOT_2
Output: output/pre_synth_sim/pre_synth_sim.vcd (waveform if $dumpfile is used in testbench).
This is your reference RTL behavior.
2️⃣ RTL Synthesis using Yosys
Tool: Yosys
Generate synthesized netlist: vsdbabysoc.synth.v
Main steps:
Read RTL modules
Synthesize top-level module
Write synthesized gate-level Verilog
DINESH@UBUNTU:~/Desktop/my_project$ cd VSDBabySoC/
DINESH@UBUNTU:~/Desktop/my_project/VSDBabySoC$ yosys
yosys> read_verilog  -sv -I src/include/ -I src/module/ src/module/vsdbabysoc.v src/module/clk_gate.v src/module/rvmyth.v

yosys> read_liberty -lib /home/DINESH/Desktop/Open_Source_EDA_Tool/yosys/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

read_liberty -lib src/lib/avsddac.lib
 
read_liberty -lib src/lib/avsdpll.lib

read_liberty -lib src/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

synth -top vsdbabysoc

write_verilog vsdbabysoc.synth.v

abc -liberty src/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

show 
image
3️⃣ Post-Synthesis Simulation:
Compile synthesized netlist + standard cells with Icarus Verilog
Macro: -DPOST_SYNTH_SIM
Purpose: Verify gate-level behavior matches RTL
Output: output/post_synth_sim/post_synth_sim.out and waveform .vcd
iverilog -o output/post_synth_sim/post_synth_sim.out -DPOST_SYNTH_SIM  -I src/include/ -I src/module/ src/module/testbench.v
POST_SYNTH_SIM ``` DINESH@UBUNTU:~/Desktop/my_project/VSDBabySoC/output$ cd post_synth_sim/ DINESH@UBUNTU:~/Desktop/my_project/VSDBabySoC/output/post_synth_sim$ ls post_synth_sim.out post_synth_sim.vcd ``` POST_SYNTH_SIM_2
Why Pre-Synthesis and Post-Synthesis?
1️⃣Pre-Synthesis Simulation:

Focuses only on verifying functionality based on the RTL code.
Zero-delay environment, with events occurring on the active clock edge.
2️⃣Post-Synthesis Simulation (GLS):

Uses the synthesized netlist (gate-level) to simulate both functionality and timing.
Identifies timing violations and potential mismatches (e.g., unintended latches).
Helps verify dynamic circuit behavior t
