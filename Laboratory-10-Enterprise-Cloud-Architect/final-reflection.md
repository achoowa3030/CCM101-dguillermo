# 🎓 Final Reflection

## 📖 Introduction

Throughout CCM101, I completed ten missions that introduced me to different areas of cloud computing and server management. Each activity gave me an opportunity to explore technologies and understand how they are used in actual computing environments.

At the beginning, I mainly understood cloud computing as a way to access online services and store information. However, as I progressed through the missions, I discovered that there is much more involved. It requires knowledge of infrastructure, operating systems, networking, security, and automation to build and maintain a reliable system.

## ☁️ What I Learned from Missions 1–9

The first nine missions provided me with the basic knowledge and practical experience needed for the final project.

I became more familiar with the different components of cloud infrastructure, such as processing power, memory, storage, and network resources. I also learned about popular cloud platforms, including AWS, Microsoft Azure, and Google Cloud Platform, and how organizations use these services to support their systems.

Another part of the activities involved working with Linux. Through different commands, I learned how to examine system information, monitor resource consumption, and check available storage. This helped me become more comfortable navigating a server environment through the terminal.

I also explored PowerShell and learned how scripting can simplify repetitive operations. These activities showed me that certain administrative tasks can be handled more efficiently through commands and automation instead of performing everything manually.

As I continued with the missions, I also developed a better understanding of server security, proper access management, and the importance of using resources responsibly.

## 🏗️ Applying My Knowledge in Mission 10 – Enterprise Cloud Architect

The final mission was an opportunity to combine the concepts from the previous activities into one complete infrastructure project. I developed **CloudNova**, a web application environment hosted on Ubuntu Server through Oracle VirtualBox.

One of the first things I worked on was configuring the network adapters so my Windows laptop could communicate with the virtual machine. After establishing the connection, I prepared the server environment by installing Docker and Docker Compose.

I used Docker Compose to deploy WordPress and MariaDB in separate containers. Through this setup, I understood how an application and its database communicate with each other. I also configured Docker volumes to make sure that important files and database records would remain stored even after restarting the containers.

Security was another major part of the mission. I applied firewall configurations using UFW, limited SSH connections, and switched to SSH key authentication instead of password-based login. I also configured Docker firewall rules to control access to the website and kept the database accessible only within the internal Docker network.

For the automation part, I created a Bash script that handles MariaDB backups. It generates timestamped backup files, compresses them, checks their integrity, and removes older backups after seven days. I then configured Cron to execute the script automatically every day.

Working on CloudNova helped me see how individual technologies can be combined to create an infrastructure that is functional, organized, and easier to maintain.

## ⚠️ Problems Encountered and How They Helped Me Learn

Not everything went smoothly while completing the final mission. I experienced difficulties with network configuration, SSH authentication, and firewall settings. There were times when certain connections did not work as expected, so I had to review my configurations and understand which settings were affecting the server.

I also needed to spend time understanding how the database backup process worked. Learning how Bash interacts with Docker, how database exports are generated, and how Cron schedules commands required additional effort.

Although these issues slowed down my progress, they gave me a better understanding of the actual work involved in server administration. I learned that simply following commands is not enough. It is important to know what each command does, check the results, and troubleshoot problems instead of immediately changing random settings.

These experiences also taught me to be more careful when handling configurations that affect network access, security, and important data.

## 🎯 Final Thoughts

Looking back at all ten missions, I can say that CCM101 gave me a much broader perspective on cloud computing. I was able to move beyond learning concepts and actually work with different tools and technologies used in managing server environments.

The experience of building CloudNova was especially valuable because it allowed me to apply what I had learned in a single project. From preparing the virtual machine to deploying containers, configuring security, and automating backups, each part helped improve my technical understanding.

I know that I still have a lot to explore and improve, but completing these activities has given me more confidence in working with Linux environments and cloud-related technologies. The knowledge I gained from this course will serve as a useful starting point as I continue developing my skills in the IT field.
