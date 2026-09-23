# ☁️ Quest 4: The Cloud-Native Practitioner

## 📋 Module Context

Welcome to the team! Having guided key clients through complex multi-cloud strategy assessments, you've earned a promotion to the Cloud-Native Infrastructure Team at CloudNova Technologies.

Modern cloud architecture extends far beyond provisioning static Virtual Machines (VMs) across AWS or Azure. Contemporary production systems rely heavily on fast, portable, and low-footprint application packaging known as Containers.

Your core task is mastering this architectural pivot from traditional hypervisor abstraction to OS-level containerization.

Leveraging the hands-on KillerCoda environment, you will take on the responsibilities of a Cloud-Native Engineer. You'll analyze structural contrasts between virtual machines and containers, run core Docker commands, and expose a live, containerized web application in seconds.

*Key Takeaway:* Standard system administrators oversee underlying server hardware; cloud-native engineers orchestrate the microservices running on top of it.

## 🎯 Key Learning Objectives

Upon completing this practical lab module, you will be able to:

* Articulate the operational differences between legacy VMs and modern containers.
* Spin up a browser-based, Docker-ready environment using KillerCoda.
* Utilize essential Docker Command Line Interface (CLI) operations.
* Retrieve, launch, inspect, and destroy a containerized web service (Nginx).
* Document containerized workflows using structured Markdown formatting.
* Expand and curate your personal GitHub Cloud Engineering Portfolio.

## 🐳 Docker Command Reference

The table below outlines the Docker CLI operations executed during this lab session, covering system checks, Nginx instantiation, network validation, and full lifecycle cleanup.

| Command Syntax | Operational Purpose |
|---|---|
| `docker version` | Output build details and release versions for both client and daemon components. |
| `docker info` | Inspect system-wide runtime settings, storage drivers, active containers, and base images. |
| `docker pull nginx` | Fetch the official Nginx base image layer from Docker Hub to local storage. |
| `docker run -d -p 8080:80 nginx` | Launch an Nginx instance in background (detached) mode, binding host port `8080` to container port `80`. |
| `curl http://localhost:8080` | Dispatch an HTTP GET request locally to verify the web service returns an active response. |
| `docker ps` | Display active containers alongside their runtime IDs, base images, uptime, mapped ports, and generated names. |
| `docker stop competent_panini` | Send a graceful termination signal (`SIGTERM`) to halt the active `competent_panini` instance. |
| `docker ps` | Re-evaluate running process list to confirm `competent_panini` has ceased execution. |
| `docker ps -a` | Query the full container registry (active + inactive) to verify the `Exited (0)` status. |
| `docker rm competent_panini` | Purge the stopped `competent_panini` container metadata and layer files from memory. |
| `docker ps -a` | Perform final verification ensuring the target container is permanently deleted. |

---

## 🔄 Container Lifecycle Workflow

The Nginx web server was guided through a complete container lifecycle state progression:

```text
Active (Running)
      │
      ▼  [docker stop competent_panini]
Inactive (Stopped)
      │
      ▼  [docker rm competent_panini]
Purged (Removed)
