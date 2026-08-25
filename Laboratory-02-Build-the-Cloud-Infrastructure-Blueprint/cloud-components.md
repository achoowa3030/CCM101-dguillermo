# Cloud Infrastructure Components Analysis

**Environment:** KillerCoda Linux Instance  
**Document Status:** Final  

---

## 1. Compute Resources

* **Purpose:** Compute resources supply the primary processing power, executing instruction sets, running application workloads, and managing system logic.
* **Importance in Cloud Computing:** They allow applications to process data dynamically and scale performance up or down based on operational demand without physical hardware constraints.
* **KillerCoda Environment Relation:** Represented by the single-core virtualized CPU (`1 Core` returned via `nproc`) provided to the instance to execute terminal commands and process workloads.

---

## 2. Storage Resources

* **Purpose:** Storage resources provide persistent or temporary space to store system files, user data, logs, and application code.
* **Importance in Cloud Computing:** They ensure data durability, availability, and access across session restarts and distributed workloads.
* **KillerCoda Environment Relation:** Represented by the primary virtual block storage device (`/dev/vda1` with 19 GB total capacity mounted on `/`) and system RAM (`1.9 GiB` evaluated via `free -h`).

---

## 3. Networking Resources

* **Purpose:** Networking resources facilitate communication between instances, external users, virtual networks, and cloud services.
* **Importance in Cloud Computing:** They enable interconnectivity, secure traffic isolation, load distribution, and remote management across cloud infrastructures.
* **KillerCoda Environment Relation:** Represented by the host's primary internal IP address (`172.30.1.2`) and the virtual network interface (`172.17.0.1`) assigned to the instance (`hostname -I`).

---

## 4. Operating System

* **Purpose:** The operating system manages system memory, CPU scheduling, storage access, software libraries, and hardware abstractions.
* **Importance in Cloud Computing:** It provides a standardized, stable environment for applications to interface seamlessly with underlying physical or virtualized cloud hardware.
* **KillerCoda Environment Relation:** Represented by the Linux server platform running **Ubuntu 24.04.4 LTS (Noble Numbat)** identified during system evaluation (`lsb_release -a`).
