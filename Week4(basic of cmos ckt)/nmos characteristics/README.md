## NMOS Transistor Characteristics

### 📘 Introduction
An **NMOS (N-type Metal-Oxide-Semiconductor)** transistor is a type of MOSFET that uses **electrons** as the majority charge carriers. It is widely used in both digital and analog circuits due to its **high speed** and **low power consumption**.

An NMOS consists of a **p-type substrate** with two **n-type regions** (source and drain) and a **metal gate** insulated from the substrate by a thin **oxide layer (SiO₂)**.

---

### ⚙️ Structure and Terminals

#### 🟩 Gate (G)
- The **gate** is the control terminal.
- It is insulated from the channel by a thin **SiO₂** layer.
- A positive voltage on the gate attracts electrons, forming an **inversion layer (n-channel)** beneath it.

#### 🟦 Source (S)
- The **source** is where carriers (electrons) enter the channel.
- Usually connected to ground (**V<sub>S</sub> = 0 V**).

#### 🟥 Drain (D)
- The **drain** is where carriers leave the channel.
- A positive voltage is applied relative to the source (**V<sub>DS</sub> > 0**).

#### ⚫ Substrate (Body, B)
- The **substrate** is the p-type body.
- Typically connected to the source (**V<sub>SB</sub> = 0**) to prevent unwanted bias.

---

### 🧠 Working Principle

1. **No Gate Voltage (V<sub>GS</sub> = 0):**
   - No inversion layer forms.
   - The p-type substrate remains non-conductive.
   - **No current** flows between drain and source.

2. **Positive Gate Voltage (V<sub>GS</sub> > 0):**
   - A positive gate voltage attracts electrons, forming an **n-type inversion layer**.
   - When **V<sub>GS</sub> ≥ V<sub>TH</sub>**, a conductive channel is created.
   - Current flows from **drain to source** (electron flow from source to drain).

---

### 🔍 Regions of Operation

#### 1️⃣ Cut-off Region
**Condition:**  
`VGS < VTH`  

- No conductive channel formed.  
- **Drain current (ID) ≈ 0**

---

#### 2️⃣ Triode (Linear) Region
**Condition:**  
`VGS > VTH` and `VDS < (VGS - VTH)`  

- Channel acts as a variable resistor.  
- Current increases linearly with **VDS**.

**Current Equation:**
```math
I_D = μ_n C_{ox} (W/L) [ (V_{GS} - V_{TH})V_{DS} - (V_{DS}^2 / 2) ]
