# Firewall Configuration

## Overview

In this activity, I used UFW (Uncomplicated Firewall) to secure my Ubuntu server. I configured the firewall to allow SSH connections for remote administration, block incoming traffic by default, and allow port 8080 so users could access my Nginx web application.

## 1. Allow SSH Access

```bash
sudo ufw allow ssh
```

I used this command to allow SSH connections, which are necessary for administrators to access and manage the server remotely.

## 2. Set the Default Firewall Policies

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

These commands block incoming connections by default while allowing outgoing traffic. This helps prevent unauthorized access and gives the server better control over network connections.

## 3. Allow Port 8080

```bash
sudo ufw allow 8080/tcp
```

I added this rule to allow TCP traffic through port 8080. This allows users to access the Nginx web application running inside my Docker container.

## 4. Enable and Check the Firewall

```bash
sudo ufw enable
sudo ufw status verbose
```

I enabled UFW and checked its status to confirm that the firewall was active and that the configured rules and default policies were properly applied.

## 5. Why SSH Must Be Allowed First

Allowing SSH before enabling UFW is important because the firewall may block incoming SSH connections if permission has not been configured. This could cause administrators to lose remote access to the server. By adding the SSH rule first, I can maintain remote access while enabling the firewall.

## Summary

Through this activity, I learned how to configure a firewall using UFW and control which network connections are allowed or blocked. I also understood the importance of allowing only necessary ports to reduce security risks and protect the server from unauthorized access.
