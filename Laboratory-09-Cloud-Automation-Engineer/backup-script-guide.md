# ⚙️ Backup Script Guide

---

## 01 | 💻 Creating the Backup Script

The `backup.sh` script automates the process of creating backups for application data. It checks for the backup directory and creates one if it does not exist. It then compresses the application folder into a `.tar.gz` archive.

The script also uses a timestamp in the backup filename, making it easier to identify when each backup was created and avoid overwriting previous backups.

### Full Script Code

```bash
#!/bin/bash
# Automated Backup Script for CloudNova Technologies

SOURCE_DIR="app-data"
BACKUP_DIR="backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "Initiating automated backup..."

# Create the backup directory if it does not exist
mkdir -p $BACKUP_DIR

# Compress the source directory into a tarball (.tar.gz)
tar -czf $BACKUP_DIR/backup_$TIMESTAMP.tar.gz $SOURCE_DIR

echo "Backup completed successfully at $TIMESTAMP!"
```

### How the Script Works

| Command or Variable | Description |
|---|---|
| `#!/bin/bash` | Tells the system to use Bash when running the script. |
| `SOURCE_DIR="app-data"` | Specifies the directory containing the application data to be backed up. |
| `BACKUP_DIR="backups"` | Specifies where the backup files will be saved. |
| `TIMESTAMP=$(date +"%Y%m%d_%H%M%S")` | Generates the current date and time for the backup filename. |
| `echo` | Displays messages in the terminal to show the script's progress. |
| `mkdir -p $BACKUP_DIR` | Creates the backup directory if it does not already exist. |
| `tar -czf` | Compresses the application directory into a `.tar.gz` archive. |

---

## 02 | 🔐 Configuring File Permissions

When I first created the Bash script, it did not have permission to run as an executable file. When I tried executing it using `./backup.sh`, the terminal displayed a *Permission denied* error.

To solve this problem, I used the following command:

```bash
chmod +x backup.sh
```

The `chmod` command is used to modify file permissions, while `+x` adds permission to execute the file. After applying this command, I was able to run the backup script using `./backup.sh` and check whether the backup archive was successfully generated.

**Key Takeaway:** Proper file permissions are important because they determine which actions users and programs are allowed to perform on a file.

---

## 03 | ⏰ Configuring a Cron Job

To make the backup process automatic, I configured a cron job using the Linux crontab editor. This allows the system to execute the backup script at a scheduled time without requiring me to run it manually every day.

### Cron Expression

```cron
0 2 * * * /root/backup.sh
```

This cron entry schedules the backup script to run every day at 2:00 AM, following the system's configured clock and time zone.

### Breakdown of the Five Time Fields

| Field | Value | Meaning |
|---|---|---|
| Minute | `0` | Runs at the beginning of the hour. |
| Hour | `2` | Runs at 2:00 AM. |
| Day of Month | `*` | Runs every day of the month. |
| Month | `*` | Runs every month. |
| Day of Week | `*` | Runs every day of the week. |

The asterisk (`*`) represents every applicable value for that particular field.

### Commands Used to Configure the Schedule

```bash
env EDITOR=nano crontab -e
```

I used this command to open the crontab editor with Nano, where I added the scheduled backup command.

After saving the configuration, I used the following command to verify the scheduled task:

```bash
crontab -l
```

The output should display `0 2 * * * /root/backup.sh`, confirming that the cron job has been saved.

---

## 04 | 📌 Summary

Through this activity, I learned how to create a Bash script to automate backups, configure file permissions, and schedule tasks using Linux Cron. I also gained experience using the `tar` command to compress application data into backup archives.

Overall, this laboratory helped me understand how automation can reduce repetitive manual tasks, save time, and make system administration more efficient. It also showed me how useful Bash scripting and scheduled tasks can be when managing cloud environments.

---

*CCM101 – Cloud Computing | Laboratory Activity 9*
