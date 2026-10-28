# ⚙️ Laboratory 09: Cloud Automation Engineer

> **CCM101 – Cloud Computing**  
> *Mission 09 | CloudNova Technologies*

---

## 🎯 Mission Overview

Congratulations! Your previous work in securing cloud environments has helped you earn a position on the Cloud Automation and DevOps Team at CloudNova Technologies.

In previous activities, you performed system administration tasks by entering commands manually. However, managing hundreds or thousands of servers this way can be time-consuming and may lead to human errors. This is why automation is an important part of cloud computing and modern DevOps practices.

In this laboratory, I took on the role of a Cloud Automation Engineer using the KillerCoda Playground. I explored Bash scripting, created a script to automate data backups, configured file permissions, and learned how to use the Linux Cron scheduler to run tasks automatically.

This activity introduced me to a more efficient way of managing repetitive tasks without having to execute every command manually.

Remember: **If you have to perform the same task repeatedly, consider automating it.**

---

## 📌 Objectives

- Understand the basic structure and syntax of Bash shell scripts, including variables and commands.
- Use the Nano text editor to create, edit, and save executable scripts.
- Manage file permissions using the `chmod` command.
- Learn how Linux Cron works and understand the structure of crontab entries.
- Document automation scripts and scheduled tasks using Markdown.
- Complete another chapter of my GitHub Cloud Computing Portfolio.

---

## 💻 Commands Executed

The following commands were used during the laboratory activity:

| Command | Purpose |
|---|---|
| `mkdir app-data` | Creates a directory for storing sample application data. |
| `echo "This is critical client data." > app-data/data.txt` | Creates a sample text file containing test data. |
| `nano backup.sh` | Opens Nano to create or edit the Bash backup script. |
| `chmod +x backup.sh` | Gives the script permission to execute. |
| `./backup.sh` | Runs the backup script. |
| `ls -l backups/` | Displays the generated backup files and their details. |
| `crontab -l` | Shows the scheduled tasks for the current user. |
| `env EDITOR=nano crontab -e` | Opens the crontab editor using Nano. |

### Automated Backup Schedule

```cron
0 2 * * * /root/backup.sh
```

This Cron configuration schedules the backup script to run automatically every day at 2:00 AM, based on the server's configured time zone. This removes the need to manually execute the backup command every day.

---

## 🛠️ Skills Learned

- **Bash Scripting:** I learned how to combine Linux commands into a single script to automate repetitive tasks, such as backing up application data.
- **File Permissions:** I understood how the `chmod +x` command gives a script permission to execute.
- **File Compression:** I practiced using the `tar` command to package and compress application data into backup archives.
- **Task Scheduling:** I learned how to configure Cron jobs to execute scripts automatically at scheduled times.
- **Technical Documentation:** I practiced documenting commands, script configurations, and automation procedures using Markdown.

## 📝 Summary

Through this activity, I gained a better understanding of how automation can simplify system administration. Instead of performing repetitive tasks manually, I learned how to create Bash scripts and schedule them using Cron.

I also became more familiar with Linux file permissions and the use of compression tools for creating backups. Overall, this laboratory showed me how automation can save time, reduce manual errors, and make managing cloud environments more efficient.

---

*CCM101 Cloud Computing Portfolio | Laboratory Activity 9*
