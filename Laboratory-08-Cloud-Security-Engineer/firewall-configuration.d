# Firewall Configuration

## Overview

In this activity, I used UFW (Uncomplicated Firewall) to add basic security to my Ubuntu server. I configured the firewall to allow SSH connections for remote administration, block incoming connections by default, and permit traffic through port 8080 so users could access my Nginx web application.

## 1. Allow SSH Access

```bash
sudo ufw allow ssh
```

I used this command to permit SSH connections, allowing administrators to access and manage the server remotely. This is important for maintaining access to the server after enabling the firewall.

## 2. Set the Default Firewall Policies

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

These commands configure the firewall to reject incoming connections by default while allowing outgoing connections. This helps reduce unauthorized access and gives the server better control over its network traffic.

## 3. Allow Port 8080

```bash
sudo ufw allow 8080/tcp
```

I added this rule to permit TCP traffic through port 8080. This allows users to access the Nginx web application running inside my Docker container through the server's mapped port.

## 4. Enable and Check the Firewall

```bash
sudo ufw enable
sudo ufw status verbose
```

I enabled the firewall and checked its status to verify that UFW was active and that the configured rules and default policies were applied correctly.

## 5. Why SSH Must Be Allowed First

Allowing SSH before enabling UFW is important because the firewall may block incoming SSH connections if no permission has been configured. This could cause administrators to lose remote access to the server. By adding the SSH rule first, I can reduce the risk of being locked out while activating the firewall.
