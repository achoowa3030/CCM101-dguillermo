# ☁️ CloudNova | Enterprise Cloud Infrastructure

## 📌 About the Project

**CloudNova** is a cloud computing project created as part of CCM101. Its main purpose is to demonstrate the deployment and administration of a web-based system using virtualization and containerization technologies.

The infrastructure is built on an Ubuntu Server virtual machine hosted through Oracle VirtualBox. It uses Docker to run two main services: WordPress, which serves as the website platform, and MariaDB, which manages the application's database.

Aside from deploying the application, the project focuses on maintaining reliable storage, configuring network access, strengthening server security, and automating database backups.

## 🎯 Main Goals

This project aims to accomplish the following:

- Build and configure an Ubuntu Server environment using Oracle VirtualBox.
- Establish communication between the Windows host and the virtual machine.
- Prepare the server by installing Docker Engine and Docker Compose.
- Run WordPress and MariaDB in separate but connected containers.
- Configure persistent storage for important application and database files.
- Apply firewall policies to control network traffic.
- Secure remote server administration through SSH key authentication.
- Develop a Bash-based solution for backing up the database.
- Use Cron to execute backup tasks on a regular schedule.
- Provide documentation for deployment, configuration, and system maintenance.

## 🏗️ Infrastructure Design

The CloudNova environment consists of several components that work together to provide the complete application setup.

1. **Windows 11 Host:** The primary computer used to configure and access the virtual server.
2. **Oracle VirtualBox:** Provides the virtual environment where Ubuntu Server operates.
3. **Ubuntu Server:** Acts as the main platform for hosting and managing the application.
4. **Network Interfaces:** NAT handles internet connectivity, while the Host-only adapter establishes communication with the Windows machine.
5. **Network Security:** UFW and iptables are used to manage and filter incoming connections.
6. **Docker Engine:** Provides the environment for running isolated application services.
7. **WordPress Service:** Handles the website's content and user-facing interface.
8. **MariaDB Service:** Responsible for storing and managing website information.
9. **Persistent Volumes:** Preserve application and database files independently of container restarts.
10. **Backup System:** Uses Bash scripting and Cron scheduling to perform regular database backups.

The complete infrastructure and its connections are illustrated in [`architecture-diagram.png`](architecture-diagram.png).

## 🛠️ Tools and Technologies

| Category | Selected Technology |
|---|---|
| Host OS | Windows 11 |
| Virtual Machine Software | Oracle VirtualBox |
| Server Platform | Ubuntu Server 26.04.1 LTS |
| Container Runtime | Docker Engine 29.9.2 |
| Container Orchestration | Docker Compose 5.6.1 |
| Web Platform | WordPress |
| Database Management | MariaDB 11.4 |
| Firewall Management | UFW and iptables |
| Scripting | Bash |
| Task Scheduling | Cron |
| Remote Administration | OpenSSH |
| Authentication Method | ED25519 SSH Key |

## 🌐 Network Setup

The server uses two network adapters to separate internet connectivity from communication with the host computer.

| Network Interface | Assigned Address | Function |
|---|---|---|
| NAT (`enp0s3`) | `10.0.2.15/24` | Provides internet connectivity |
| Host-only (`enp0s8`) | `192.168.56.103/24` | Allows direct host-to-server communication |
| Windows Host-only Adapter | `192.168.56.1` | Connects the Windows host to Ubuntu |
| WordPress Service | `192.168.56.103:8080` | Provides access to the website |

**🌍 Website Access Address:**

`http://192.168.56.103:8080`

The website can be opened through a browser on the Windows host using the configured Host-only network address.

## 🐳 Container Deployment

Docker Compose manages the two primary services required by CloudNova.

| Container Name | Docker Image | Description |
|---|---|---|
| `cloudnova-wordpress` | `wordpress:latest` | Hosts and serves the website |
| `cloudnova-database` | `mariadb:11.4` | Handles database operations and storage |

Both services are connected through a dedicated Docker network named `cloudnova-network`, allowing them to communicate without requiring the database to be exposed directly to the host.

**💾 Persistent Storage Configuration**

Two Docker volumes are configured to protect important data:

- `wordpress_data` – Stores WordPress application files and related content.
- `mariadb_data` – Maintains the database files and stored records.

These volumes allow important information to remain available even if the containers are stopped, removed, or recreated.

The MariaDB port is kept private and is not published to the host network.

## 🔒 Server Protection and Access Control

Several security measures have been introduced to reduce unnecessary network exposure and protect the server.

- UFW is configured with incoming traffic blocked by default.
- Outbound network connections are permitted.
- SSH connections are limited to the Host-only network.
- Password-based SSH authentication is turned off.
- Direct root access through SSH is prohibited.
- ED25519 public-key authentication is used for remote access.
- Docker firewall rules limit website access to the Windows host.
- MariaDB communication is restricted to the internal Docker network.
- Database credentials are kept inside a protected `.env` configuration file.
- Sensitive environment variables are excluded from the GitHub repository.

These configurations help limit unauthorized access while allowing the required application services to function.

## ⚙️ Automated Database Backup

To help prevent the loss of important database information, CloudNova includes a Bash script that handles the backup process automatically.

**Script File:** `automation-script.sh`

**Backup Directory:** `/opt/cloudnova/backups/`

**Execution Schedule:** Daily at 2:00 AM UTC (10:00 AM Philippine Time).

The backup script is designed to handle the following operations:

- Export the MariaDB database into a backup file.
- Compress the generated backup using Gzip.
- Generate filenames containing the date and time of execution.
- Verify that the resulting backup file is valid.
- Remove backup files that are more than seven days old.
- Write execution details and backup results into a log file.

Cron is responsible for launching the script according to the configured schedule, reducing the need for manual backup operations.

## 📂 Repository Layout

The GitHub repository contains the configuration files, scripts, diagrams, and documentation needed to understand and maintain the project.

```text
Laboratory-10-Enterprise-Cloud-Architect/
├── README.md
├── architecture-diagram.png
├── docker-compose.yml
├── automation-script.sh
├── operational-manual.md
└── final-reflection.md
```

## 🚀 Managing the Application

The following commands can be used to access and manage the CloudNova environment.

**1. Navigate to the project folder**

```bash
cd /opt/cloudnova
```

**2. Launch the Docker services**

```bash
sudo docker compose up -d
```

**3. Display active containers**

```bash
sudo docker ps
```

**4. Inspect application logs**

```bash
sudo docker compose logs
```

**5. Access the deployed website**

```text
http://192.168.56.103:8080
```

For additional information about the installation process, security configurations, backup procedures, and routine maintenance, refer to [`operational-manual.md`](operational-manual.md).

## 📦 Included Project Files

The following files serve as the primary outputs of the project:

- `architecture-diagram.png` – Provides a visual representation of the infrastructure and network arrangement.
- `docker-compose.yml` – Defines the WordPress and MariaDB services, including their configurations.
- `automation-script.sh` – Contains the commands responsible for generating and managing database backups.
- `operational-manual.md` – Contains the instructions for deployment, administration, and maintenance.
- `final-reflection.md` – Presents the experiences, challenges, and knowledge gained during the CCM101 activities.

## 📝 Final Overview

CloudNova brings together different cloud computing concepts into a single working infrastructure. Through VirtualBox and Ubuntu Server, the project establishes a virtual server capable of hosting containerized applications using Docker.

The integration of WordPress and MariaDB demonstrates how web services and databases can operate together, while persistent volumes help protect stored information. Firewall configurations and SSH authentication provide additional protection, and scheduled backup scripts introduce automation into regular server maintenance.

Overall, the project demonstrates the practical application of virtualization, container management, networking, security, storage, and automation in building and maintaining a small-scale cloud environment.
