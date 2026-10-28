# System Baseline Report

## Host System Resources

Before starting the deployment, I checked the available resources of my Ubuntu environment using different Linux commands. This helped me understand how much memory and storage were available for running applications and services.

| Resource | Result |
|---|---|
| Total RAM | 1.9 GiB |
| Root Filesystem Storage Capacity | 19G |

## Importance of Checking Disk Space

Checking the available disk space before deploying applications is important because the server needs enough storage to handle application files, system logs, temporary data, and other files created during operation. When more users access the application, storage usage may also increase. Monitoring disk space helps prevent storage-related issues and keeps the system running properly.

## Commands Used

- `free -h` – Displays the system's total, used, and available memory.
- `df -h /` – Shows the total capacity, used space, and available storage of the root filesystem.
- `top` – Displays currently running processes along with real-time CPU and memory usage.

## Summary

Through this activity, I learned the importance of checking system resources before deploying applications. Knowing the available RAM and disk space helps determine whether the environment has enough resources to support the services being installed. I also became more familiar with Linux monitoring commands that can help identify resource usage and maintain system performance.
