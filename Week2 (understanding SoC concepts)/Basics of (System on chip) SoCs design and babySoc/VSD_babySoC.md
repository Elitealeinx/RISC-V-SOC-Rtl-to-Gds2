## VSDBabySoC – RISC-V Based System on Chip

**VSDBabySoC** is a compact yet powerful **System on Chip (SoC)** built on the open-source **RISC-V architecture**.  
Its design focuses on:
- ✅ Testing **three open-source IP cores** simultaneously.  
- ✅ Calibrating **analog components** within the SoC.  

The SoC integrates:
- 🧠 **RVMYTH Microprocessor** (RISC-V CPU)  
- ⏱ **8x Phase-Locked Loop (PLL)** for stable clock generation  
- 🎵 **10-bit Digital-to-Analog Converter (DAC)** for analog interfacing  

---

### 📌 System Workflow

#### 1. Initialization & Clock Generation
- BabySoC begins by activating its **PLL** upon receiving an input signal.  
- The PLL produces a **stable and synchronized clock signal**.  
- This ensures all components (CPU & DAC) run **in harmony** without timing mismatches.  

#### 2. Data Processing in RVMYTH
- The **RVMYTH CPU** (based on RISC-V) executes instructions.  
- Uses its **r17 register** to hold & cycle digital values.  
- Continuously updates r17 to prepare data for the DAC.  

#### 3. Analog Signal Generation
- The **DAC** receives digital values from RVMYTH.  
- Converts them into **analog signals**.  
- Outputs are stored in a file `OUT` and can drive devices like **TVs, phones, and speakers**.  

---

### 🧩 Components of VSDBabySoC

#### 🧠 RVMYTH (RISC-V CPU)
- The **central processor** of BabySoC.  
- Lightweight, open-source, and customizable.  
- Handles processing tasks & communication with peripherals.  

#### ⏱ Phase-Locked Loop (PLL)
- A **control system** that locks an output signal’s phase with an input reference.  
- Core elements:  
  - **Phase Detector** → compares input vs output phase  
  - **Loop Filter** → reduces noise, produces control voltage  
  - **VCO (Voltage Controlled Oscillator)** → adjusts frequency  

📌 **Why not just use off-chip clocks?**  
- 🔴 Distribution delays (long wiring → signal skew)  
- 🔴 Clock jitter (timing noise)  
- 🔴 Different blocks require different frequencies  
- 🔴 Crystal frequency deviations (ppm error, temperature drift, aging)  

#### 🎵 Digital-to-Analog Converter (DAC)
- Converts **binary inputs → analog outputs**.  
- Two common DAC types:  
  - Weighted Resistor DAC  
  - R-2R Ladder DAC  
- **VSDBabySoC uses a 10-bit DAC**:  
  - 2^10 = **1024 discrete analog levels**  
  - Enables precise multimedia signal generation  

---

### 📊 Functional Flow

1. **Startup** → PLL generates stable clock.  
2. **Processing** → RVMYTH updates digital values in r17.  
3. **Conversion** → DAC transforms digital → analog.  
4. **Output** → Signals stored in `OUT` → sent to external devices.  

---

### 🚀 Applications

- 🎓 **Education & Research**  
  - Great for learning CPU, SoC design, and digital-to-analog interfacing.  

- 📱 **Consumer Electronics**  
  - Demonstrates multimedia interfacing (TVs, phones, speakers).  

- 🏭 **Chip Design Prototyping**  
  - Serves as a test platform for open-source IP cores.  

- 🤖 **Embedded Systems**  
  - Extendable for IoT, robotics, and industrial automation.  

---

### 🧠 Key Insights
- 🔹 Integration of CPU + PLL + DAC reflects **real-world SoC design**.  
- 🔹 Open-source RVMYTH provides **flexibility & learning potential**.  
- 🔹 Highlights **synchronization & interfacing** between digital and analog domains.  
- 🔹 Scalable for **larger, complex SoCs**.  

---

### ✅ Conclusion
The **VSDBabySoC** demonstrates how a **RISC-V CPU (RVMYTH)**, a **PLL**, and a **10-bit DAC** can be combined into a compact yet educational SoC.  
It showcases:
- 🔧 SoC Architecture  
- 🧠 RISC-V CPU design  
- ⏱ Clock synchronization  
- 🎵 Digital-to-Analog interfacing  

📌 **In essence, VSDBabySoC bridges the digital and analog worlds inside a single chip, making it an ideal platform for both learning and prototyping.**

---

### 📷 Block Diagram (Placeholder)

```text
         ┌─────────────┐
 Input → │     PLL     │ → Stable Clock
         └──────┬──────┘
                │
         ┌──────▼──────┐
         │   RVMYTH    │ → Digital Data Stream
         └──────┬──────┘
                │
         ┌──────▼──────┐
         │     DAC     │ → Analog Output → OUT file → External Devices
         └─────────────┘
