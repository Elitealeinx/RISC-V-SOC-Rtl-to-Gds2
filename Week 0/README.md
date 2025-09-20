# RISC-V Reference SoC Tapeout Program (VSD)

[![Ubuntu](https://img.shields.io/badge/OS-Ubuntu%2020.04+-orange)](https://ubuntu.com/)  
[![RAM](https://img.shields.io/badge/RAM-6GB-blue)]  
[![Disk Space](https://img.shields.io/badge/Disk-50GB-lightgrey)]  

This repository provides instructions for setting up essential open-source EDA tools for the RISC-V SoC development and tapeout program. Currently, it covers the installation of **Yosys**, **Icarus Verilog (Iverilog)**, and **GTKWave**.

---

## System Requirements

- **RAM:** 6 GB minimum  
- **Disk Space:** 50 GB minimum  
- **OS:** Ubuntu 20.04 or higher  
- **CPU:** 4 vCPU minimum  

---

## Optional: Resize Ubuntu Window (Virtual Machine)

```bash
sudo apt update
sudo apt install build-essential dkms linux-headers-$(uname -r)
cd /media/spatha/VBox_GAs_7.1.8/
./autorun.sh
