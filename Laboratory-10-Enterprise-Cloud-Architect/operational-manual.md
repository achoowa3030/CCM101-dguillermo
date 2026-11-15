# 📘 CloudNova – Server Administration and Operational Guide

## 📌 1. Introduction

This document serves as a reference for configuring, operating, securing, and maintaining the CloudNova infrastructure.

CloudNova is a web hosting environment deployed on an Ubuntu Server virtual machine through Oracle VirtualBox. It uses Docker to manage two essential services: WordPress for website hosting and MariaDB for database management.

The guide provides the necessary procedures and terminal commands for accessing the server, controlling application containers, managing stored data, applying security configurations, and performing automated database backups.

## 💻 2. Required System Components

### 🖥️ Host Machine

The following resources are needed on the main computer:

- Windows 11 operating system
- Oracle VirtualBox
- SSH client
- Web browser
- Active internet connection

### 🐧 Virtual Machine Environment

The virtual server requires the following software and resources:

- Ubuntu Server 26.04.1 LTS
- 35 GB dynamically allocated virtual disk
- Docker Engine
- Docker Compose
- UFW Firewall
- OpenSSH Server

### 🧰 Application Requirements

The CloudNova environment consists of these application components:

- WordPress website platform
- MariaDB 11.4 database
- Docker network for container communication
- Docker volumes for persistent data storage

## 🏗️ 3. Virtual Server and Network Configuration

### 3.1 Virtual Machine Details

CloudNova operates through an Ubuntu Server virtual machine created and managed using Oracle VirtualBox.

| Setting | Configuration |
|---|---|
| Virtual Machine Name | `cloudnova-server` |
| Server Username | `cloudnova` |
| Operating System | Ubuntu Server 26.04.1 LTS |
| Virtualization Platform | Oracle VirtualBox |
| Disk Capacity | 35 GB |

### 3.2 Network Interface Settings

Two network adapters are assigned to the virtual machine to provide internet connectivity and communication with the Windows host.

| Interface | IP Address | Description |
|---|---|---|
| `enp0s3` | `10.0.2.15` | Internet connection through NAT |
| `enp0s8` | `192.168.56.103` | Direct connection between laptop and server |

The Windows computer uses `192.168.56.1` as its address on the Host-only network.

### 3.3 Accessing Ubuntu Server

To establish a remote connection, launch Windows PowerShell and execute:

```powershell
ssh -i "$env:USERPROFILE\.ssh\cloudnova_ed25519" cloudnova@192.168.56.103
```

If prompted, provide the passphrase associated with your SSH private key.

Once connected, the WordPress application can be accessed by entering the following address in a web browser:

```text
http://192.168.56.103:8080
```

## 🐳 4. Docker Application Management

### 4.1 Verifying Docker Installation

Before managing the application, confirm that Docker Engine is properly installed.

Display the Docker version:

```bash
sudo docker --version
```

Verify the Docker Compose installation:

```bash
sudo docker compose version
```

### 4.2 CloudNova Project Directory

The main project files are located inside the following directory:

```text
/opt/cloudnova/
```

The configuration file used by the deployed application is called `compose.yaml`, while the version maintained in the GitHub repository uses the filename `docker-compose.yml`.

### 4.3 Overview of Application Containers

CloudNova depends on two Docker containers to provide its website functionality.

**WordPress Container**

- Container identifier: `cloudnova-wordpress`
- Docker image: `wordpress:latest`
- Access address: `192.168.56.103:8080`
- Persistent volume: `wordpress_data`

**MariaDB Container**

- Container identifier: `cloudnova-database`
- Docker image: `mariadb:11.4`
- Configuration values: Maintained in `.env`
- Persistent volume: `mariadb_data`
- Network access: Restricted to the internal Docker network

### 4.4 Launching the Services

After connecting to the Ubuntu virtual machine, navigate to the project directory and start the containers:

```bash
cd /opt/cloudnova
sudo docker compose up -d
```

To see which containers are currently active:

```bash
sudo docker ps
```

To view the status of the services managed by Docker Compose:

```bash
sudo docker compose ps
```

### 4.5 Controlling Application Services

The following commands are available for managing the application's operating state.

**Stop the running services:**

```bash
cd /opt/cloudnova
sudo docker compose stop
```

**Resume previously stopped services:**

```bash
cd /opt/cloudnova
sudo docker compose start
```

**Restart the application containers:**

```bash
cd /opt/cloudnova
sudo docker compose restart
```

**Remove the containers and their associated network while preserving stored volume data:**

```bash
cd /opt/cloudnova
sudo docker compose down
```

<text color="danger" weight="semibold">⚠️ Important Reminder</text>

Do not execute `docker compose down -v` unless you deliberately intend to remove the associated Docker volumes and their stored information.

### 4.6 Viewing Container Activity

Docker logs can be used to investigate application behavior and identify possible errors.

**View WordPress activity:**

```bash
sudo docker logs cloudnova-wordpress
```

**View MariaDB activity:**

```bash
sudo docker logs cloudnova-database
```

**Monitor logs from both services continuously:**

```bash
sudo docker compose logs -f
```

## 💾 5. Persistent Data Management

Docker volumes are configured to preserve important application information independently of the container lifecycle.

This means that stopping or recreating the containers does not automatically remove the files stored in these volumes.

| Volume Name | Container Storage Path | Stored Information |
|---|---|---|
| `wordpress_data` | `/var/www/html` | WordPress application files |
| `mariadb_data` | `/var/lib/mysql` | MariaDB database contents |

To display the volumes currently available:

```bash
sudo docker volume ls
```

To examine the configuration and details of the MariaDB volume:

```bash
sudo docker volume inspect mariadb_data
```

Although Docker volumes provide persistent storage, they should not be treated as complete backup solutions. Separate database backups are still necessary to provide an additional way of recovering information.

## 🔒 6. Server Security Management

### 6.1 Configuring the UFW Firewall

The Ubuntu firewall is configured to reject incoming connections unless they are specifically permitted. Outbound traffic is allowed so that the server can communicate with external services.

Apply the default firewall policies:

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

Permit SSH connections originating from the Host-only network:

```bash
sudo ufw allow from 192.168.56.0/24 to any port 22 proto tcp
```

Activate the firewall:

```bash
sudo ufw enable
```

Review the active firewall configuration:

```bash
sudo ufw status verbose
```

**Additional information:** WordPress traffic is managed through separate Docker firewall configurations. This is necessary because published Docker ports may not follow the normal UFW filtering behavior.

### 6.2 Securing SSH Connections

Remote server access is protected through SSH key authentication rather than traditional password-based authentication.

The following security options are configured on the server:

```text
PermitRootLogin no
PubkeyAuthentication yes
PasswordAuthentication no
KbdInteractiveAuthentication no
MaxAuthTries 3
X11Forwarding no
AllowUsers cloudnova
```

The SSH security configuration is maintained in:

```text
/etc/ssh/sshd_config.d/99-security.conf
```

Before applying configuration changes, check the SSH configuration for errors:

```bash
sudo sshd -t
```

Display the effective SSH settings:

```bash
sudo sshd -T
```

Apply configuration changes without completely restarting the SSH service:

```bash
sudo systemctl reload ssh
```

<text color="danger" weight="semibold">⚠️ Security Reminder</text>

When modifying SSH settings, keep your existing remote session active until you have confirmed that a new connection works. This provides a way to recover access if the updated configuration prevents new SSH connections.

### 6.3 Managing Docker Firewall Access

Aside from the Ubuntu firewall, Docker uses additional filtering rules to regulate connections reaching the WordPress container.

The current firewall setup is designed to:

1. Preserve connections that have already been established.
2. Permit the Windows host (`192.168.56.1`) to reach WordPress through the Host-only interface.
3. Reject other incoming traffic directed toward the published WordPress port.

To examine the active Docker firewall rules:

```bash
sudo iptables -S DOCKER-USER
```

The custom firewall automation script can be found at:

```text
/usr/local/sbin/cloudnova-docker-firewall.sh
```

Its corresponding systemd service file is located at:

```text
/etc/systemd/system/cloudnova-docker-firewall.service
```

Check whether the firewall service is active:

```bash
sudo systemctl status cloudnova-docker-firewall
```

### 6.4 Managing Database Credentials

The database login information is maintained in the project's environment configuration file:

```text
/opt/cloudnova/.env
```

To inspect its current file permissions:

```bash
sudo ls -l /opt/cloudnova/.env
```

**Important security practices:**

- Keep the `.env` file out of the GitHub repository.
- Avoid exposing database usernames and passwords.
- Do not make MariaDB port 3306 publicly accessible through the host network.
- Maintain appropriate file permissions for sensitive configuration files.

WordPress communicates with MariaDB through the private Docker network by using the database service name `database`.

## ⚙️ 7. Database Backup Automation

### 7.1 Backup Script Information

CloudNova includes a Bash script that handles database backup operations without requiring the administrator to perform each step manually.

The script installed on the Ubuntu server is located at:

```text
/usr/local/sbin/cloudnova-db-backup.sh
```

The corresponding script included in the GitHub repository is:

```text
automation-script.sh
```

The backup procedure is responsible for the following tasks:

1. Retrieves database configuration values from the `.env` file.
2. Determines whether the MariaDB container is currently running.
3. Exports the selected database into an SQL backup.
4. Compresses the generated file using Gzip.
5. Performs an integrity check on the compressed archive.
6. Assigns a timestamp to the backup filename.
7. Removes backup archives that exceed the seven-day retention period.

### 7.2 Backup Storage Directory

Generated database backups are saved in the following location:

```text
/opt/cloudnova/backups/
```

To view the available backup files and their sizes:

```bash
sudo ls -lh /opt/cloudnova/backups/
```

### 7.3 Running a Backup Manually

The backup process can also be started manually whenever necessary.

Execute the following command:

```bash
sudo /usr/local/sbin/cloudnova-db-backup.sh
```

When the operation completes successfully, the terminal displays a confirmation similar to:

```text
SUCCESS: Database backup created.
File: /opt/cloudnova/backups/...
Size: ...
```

### 7.4 Verifying Backup Integrity

After generating a backup, it is possible to test whether the compressed archive is readable and valid.

Run:

```bash
sudo bash -c 'gzip -t "$(ls -t /opt/cloudnova/backups/*.sql.gz | head -n 1)" && echo "Backup archive is valid."'
```

If the command displays `Backup archive is valid.`, the selected compressed backup has passed the Gzip integrity test.

### 7.5 Configuring Automatic Backup Scheduling

CloudNova uses Cron to execute the database backup script automatically.

The configured execution time is 2:00 AM UTC, which corresponds to 10:00 AM in the Philippines.

The schedule is maintained through the root user's Cron configuration.

Open the Cron editor:

```bash
sudo crontab -e
```

Add the following entry:

```cron
0 2 * * * /usr/local/sbin/cloudnova-db-backup.sh >> /var/log/cloudnova-backup.log 2>&1
```

This configuration launches the backup script once every day and redirects its output and error messages into a dedicated log file.

### 7.6 Reviewing Cron Configuration

To confirm that the scheduled backup task has been registered:

```bash
sudo crontab -l
```

To check whether the Cron service is currently operating:

```bash
sudo systemctl status cron
```

### 7.7 Monitoring Backup Activity

The backup script records its execution results in the following log file:

```text
/var/log/cloudnova-backup.log
```

Display the complete backup log:

```bash
sudo cat /var/log/cloudnova-backup.log
```

To inspect only the most recent 50 entries:

```bash
sudo tail -n 50 /var/log/cloudnova-backup.log
```

## ♻️ 8. Database Recovery Procedure

CloudNova's compressed SQL backup files can be used to restore database information when recovery is necessary.

<text color="danger" weight="semibold">⚠️ Important Warning</text>

Restoring a database may overwrite existing information. Before proceeding, create a separate backup of the current database to avoid losing newer records.

### 8.1 Loading Database Configuration

Start by entering the project directory:

```bash
cd /opt/cloudnova
```

Load the environment variables from the `.env` file:

```bash
set -a
source .env
set +a
```

### 8.2 Selecting the Backup File

Specify the full path of the backup archive you intend to restore:

```bash
BACKUP_FILE="/opt/cloudnova/backups/your_backup_filename.sql.gz"
```

Replace `your_backup_filename.sql.gz` with the actual name of the backup you want to use.

### 8.3 Executing Database Restoration

After selecting the correct archive, run the following command:

```bash
sudo bash -c 'gunzip -c "$1" | docker exec -i -e MYSQL_PWD="$2" cloudnova-database mariadb -u root "$3"' _ "$BACKUP_FILE" "$DB_ROOT_PASSWORD" "$DB_NAME"
```

This command extracts the compressed SQL file and passes its contents into the MariaDB container for restoration.

### 8.4 Checking the Database Container

After the restoration process, examine the MariaDB logs for possible errors:

```bash
sudo docker logs --tail 50 cloudnova-database
```

## 🔧 9. Server Maintenance and Troubleshooting

Regular monitoring helps identify problems that could affect application performance, connectivity, or data availability.

The following commands can be used when inspecting the CloudNova environment.

### 9.1 Inspecting Docker Containers

Display all containers, including those that are currently stopped:

```bash
sudo docker ps -a
```

### 9.2 Restarting the Docker Service

If Docker encounters an issue, its system service can be restarted using:

```bash
sudo systemctl restart docker
```

### 9.3 Monitoring Disk Capacity

Check the available storage space across mounted filesystems:

```bash
df -h
```

### 9.4 Checking Memory Consumption

Display the current memory and swap usage:

```bash
free -h
```

### 9.5 Inspecting Network Configuration

View the server's network interfaces and assigned addresses:

```bash
ip addr
```

Display the current routing information:

```bash
ip route
```

### 9.6 Reviewing Firewall Settings

Check the UFW firewall status:

```bash
sudo ufw status verbose
```

Inspect the Docker-specific firewall rules:

```bash
sudo iptables -S DOCKER-USER
```

### 9.7 Verifying the Docker Firewall Service

Check the current state of the custom firewall service:

```bash
sudo systemctl status cloudnova-docker-firewall
```

### 9.8 Reviewing Backup Execution Records

Inspect the latest backup activities and any recorded errors:

```bash
sudo tail -n 50 /var/log/cloudnova-backup.log
```

### 9.9 Common Issues and Possible Solutions

| Issue | Possible Reason | Recommended Action |
|---|---|---|
| WordPress page is unavailable | Container is stopped or network connectivity is interrupted | Inspect the container status and network configuration |
| WordPress cannot communicate with MariaDB | Database container is unavailable or unhealthy | Review the MariaDB container status and logs |
| SSH connection cannot be established | Incorrect private key or SSH configuration | Verify the authentication key and server settings |
| Database backup does not complete | MariaDB is unavailable or required environment variables are missing | Inspect the database service and `.env` configuration |
| Insufficient disk space | Storage is occupied by unnecessary files or accumulated backups | Examine disk usage and remove unnecessary old backup files |
| Windows cannot access the website | Incorrect Host-only configuration or Docker firewall rules | Review the network interfaces and firewall configuration |

## 📋 10. Routine Server Maintenance Guidelines

To keep CloudNova operating properly, observe the following maintenance practices:

- Store database credentials securely and avoid sharing them.
- Make sure `.env` remains excluded from GitHub uploads.
- Keep MariaDB communication within the internal Docker network.
- Avoid changing firewall policies without understanding their effects.
- Inspect backup archives regularly to ensure they are being generated.
- Maintain an additional copy of important backups outside the virtual machine.
- Review Docker volumes carefully before attempting to delete them.
- Monitor available disk space to prevent storage-related issues.
- Check application updates and their compatibility before installing them.

## 📝 11. Conclusion

This operational guide provides the procedures required to administer and maintain the CloudNova server environment.

By following the instructions in this document, administrators can manage the deployed website, monitor Docker services, maintain secure server access, preserve application data, and perform database recovery when necessary.

Regular maintenance, proper security practices, and reliable backup procedures help keep the infrastructure organized and ensure that its essential services remain manageable.
