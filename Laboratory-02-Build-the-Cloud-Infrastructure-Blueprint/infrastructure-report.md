# 📊 Infrastructure Investigation Report

**Environment:** KillerCoda Cloud Environment 🐧  
**Host Name:** ubuntu 🖥️  
**Document Status:** Final 📝  

---

## 📌 1. Executive Summary
This report documents the operating system details, CPU specs, memory allocation, storage capacity, and network configuration of the evaluated Linux instance gathered from direct system execution. 💡

---

## ⚙️ 2. System Specifications & Executed Commands

| Specification Parameter | Specification / Result | Command Used |
| :--- | :--- | :--- |
| **Operating System 🐧** | Ubuntu 24.04.4 LTS (Noble Numbat) | `lsb_release -a` |
| **Number of CPU Cores 🧠** | 1 Core | `nproc` |
| **Total Memory (RAM) ⚡** | 1.9 GiB (1.4 GiB Available) | `free -h` |
| **Disk Capacity 💾** | 19 GB Total (5.4 GB Used, 13 GB Available) | `df -h /` |
| **Mounted File System 📁** | `/dev/vda1` mounted on `/` | `df -h /` |
| **Hostname 🏷️** | `ubuntu` | `hostname` |
| **IP Addresses 🌐** | `172.30.1.2`, `172.17.0.1` | `hostname -I` |

---

## 🔍 3. Storage & Network Analysis

* **💾 Resource Availability:** The system maintains healthy performance margins, utilizing only 30% of its available 19 GB disk storage and keeping roughly 1.4 GiB of RAM available.
* **🌐 Network Configuration:** The primary private IP assigned to the host is `172.30.1.2`, with `172.17.0.1` serving as the virtual container interface (Docker bridge).
