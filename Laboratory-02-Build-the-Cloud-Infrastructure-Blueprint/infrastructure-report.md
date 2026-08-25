# Infrastructure Investigation Report

**Environment:** KillerCoda Cloud Environment  
**Host Name:** ubuntu  
**Date:** August 25, 2026  
**Document Status:** Final  

---

## 1. Executive Summary
This report documents the hardware specifications, operating system details, and network configurations of the target Linux instance evaluated during Checkpoint 2. The data below outlines the baseline parameters for system capacity and active resources.

---

## 2. System Specifications

| Hardware / OS Parameter | Specification / Result |
| :--- | :--- |
| **Operating System** | Ubuntu 24.04.4 LTS (Noble Numbat) |
| **Kernel Version** | Linux (Ubuntu Server Environment) |
| **CPU Architecture** | Virtualized CPU |
| **CPU Cores** | 1 Core |
| **Total Memory (RAM)** | 1.9 GiB (1.4 GiB Available) |
| **Storage Capacity** | 19.0 GB Total |
| **Primary File System** | `/dev/vda1` mounted on `/` |
| **Disk Utilization** | 5.4 GB Used (30% Capacity) |
| **Hostname** | `ubuntu` |
| **IP Addresses** | `172.30.1.2` (Host) / `172.17.0.1` (Docker Bridge) |

---

## 3. Storage & Network Analysis

* **Resource Availability:** The system currently maintains sufficient overhead, with 73% of RAM available and 13 GB of unallocated disk space remaining on the primary partition.
* **Network Interfacing:** The host operates on an internal subnet (`172.30.1.2`) and hosts a default Docker network bridge interface (`172.17.0.1`).
