# Laboratory 08 – Cloud Security Engineer

## Mission Overview

Congratulations! Your previous work in system monitoring has helped you earn a place on the Cloud Security Team at CloudNova Technologies.

In cloud computing, protecting servers from unauthorized access is an important responsibility. Leaving a server without proper security can expose it to potential attacks, unauthorized connections, and data breaches. To prevent these risks, cloud engineers use security measures such as firewalls and access control rules.

In this laboratory, I took on the role of a Cloud Security Engineer using the KillerCoda Playground. I deployed a web application, checked the server's open network ports, and configured the Uncomplicated Firewall (UFW) to control incoming and outgoing connections. This allowed me to understand how firewall rules help protect a server while still allowing legitimate users to access its services.

## Objectives

- Understand the concept of attack surfaces and the Principle of Least Privilege (PoLP).
- Learn how to check active network ports on a Linux server.
- Configure firewall rules to control which connections are allowed or blocked.
- Allow necessary traffic, such as SSH and HTTP, while restricting unwanted incoming connections.
- Document firewall configurations and basic security practices using Markdown.
- Continue improving my GitHub Cloud Computing Portfolio.

## Commands Executed

**Deploy the Nginx container**

```bash
docker run -d --name secure-web-app -p 8080:80 nginx
```

**Test the web application**

```bash
curl http://localhost:8080
docker ps
```

**Configure the firewall**

```bash
sudo ufw allow ssh
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
```

**Allow port 8080 and verify the firewall rules**

```bash
sudo ufw allow 8080/tcp
sudo ufw status verbose
sudo ufw status numbered
curl http://localhost:8080
```

## Skills Learned

Through this activity, I learned how to deploy a web server using Docker and apply basic security rules using UFW. I also gained a better understanding of why it is important to control network access and allow only the ports required by an application.

By testing the website with `curl` and checking the firewall configuration, I learned how to verify that the application was accessible and that the firewall rules were properly applied.

Overall, this laboratory helped me understand the importance of server security, firewall management, and controlling network connections. It also showed me how simple security configurations can help reduce potential risks and protect a server from unwanted access.
