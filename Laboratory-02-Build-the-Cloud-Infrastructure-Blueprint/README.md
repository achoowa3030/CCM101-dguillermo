# Laboratory 02: Build the Cloud Infrastructure Blueprint

## Mission Overview
This mission focuses on laying down foundational cloud infrastructure skills by setting up a dedicated laboratory directory, exploring an active cloud Linux server environment, analyzing core infrastructure components, and researching leading public cloud service providers.

---

## Objectives
* Establish a structured laboratory repository using proper Git version control.
* Audit and document the specs of a live Linux virtual instance using terminal tools.
* Map fundamental cloud architecture concepts (Compute, Storage, Networking, OS) to physical or virtual Linux resources.
* Compare core cloud services across AWS, Microsoft Azure, and Google Cloud Platform (GCP).

---

## Cloud Infrastructure Components
* **Compute Resources:** Processing capabilities handled by virtual CPUs running application logic and commands.
* **Storage Resources:** Space provided by block devices (`/dev/vda1`) and memory (`RAM`) for persistent files and temporary processing.
* **Networking Resources:** Connectivity interfaces (private IP and Docker bridge) enabling secure data transfers and network traffic management.
* **Operating System:** System platform (Ubuntu 24.04 LTS) managing hardware abstractions and standard application libraries.

---

## Tools Used
* **Linux Terminal (KillerCoda):** Cloud sandbox environment used to inspect instance hardware and networking.
* **Git & GitHub:** Version control software and remote platform used to track updates and manage documentation.
* **Markdown:** Structured documentation language used for laboratory reporting.
* **Gemini:** Generative AI assistant used strictly for grammar correction and textual formatting as instructed.
* **KillerCoda:** Interactive cloud sandbox environment used to run Linux commands and inspect system resources.
* **Draw.io:** Visual diagramming platform used to design custom cloud infrastructure and network flow architecture.

---

## Linux Commands Executed
* `lsb_release -a` — Displayed detailed operating system and release distribution specs.
* `nproc` — Returned the total count of available processing cores.
* `free -h` — Displayed overall system RAM usage, buffer/cache, and available memory in human-readable units.
* `df -h /` — Inspected disk partition space, mount points, and remaining capacity for the root directory.
* `hostname` — Verified the local hostname assigned to the Linux instance.
* `hostname -I` — Listed the network IP addresses bound to active interfaces.

---

## Skills Learned
* Investigating cloud server resource limits directly through Linux command-line utilities.
* Structuring technical documentation using standardized Markdown syntax.
* Mapping generic infrastructure definitions to specific public cloud vendor implementations (AWS, Azure, GCP).
* Managing multi-step cloud engineering tasks cleanly within a Git version control workflow.

---

## Challenges Encountered
* **Terminal Command Errors:** Encountered minor syntax typos (such as `free /h` and `df .h`) during system inspection, which were quickly corrected by verifying command flags (`df -h /`).
* **Git Configuration Setup:** Encountered initial commit blocking due to an unconfigured Git identity, resolved by configuring global `user.name` and `user.email` settings.
