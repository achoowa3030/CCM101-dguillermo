# The Cloud Deployment Engineer

## Mission Overview

Congratulations! Because of your work in deploying data storage solutions, you have earned a place on the Cloud Deployment Team at CloudNova Technologies.

Previously, you worked with individual containers, such as web servers and storage services. However, real-world applications often require multiple components working together. These systems use a multi-tier architecture, where a web application communicates with a backend database.

Managing each container manually can take more time and may lead to errors. This is where Docker Compose becomes useful. In this activity, you will learn how to use Infrastructure as Code (IaC) by creating a YAML configuration file that defines a private cloud storage system using Nextcloud and MariaDB. Instead of starting each container separately, you can deploy the entire application using a single command.

## Objectives

- Understand the basic concept of multi-tier application architecture.
- Learn the purpose and structure of a `docker-compose.yml` file.
- Practice using the Nano text editor to create and edit configuration files.
- Deploy a multi-container application using Nextcloud and MariaDB.
- Document deployment steps and Infrastructure as Code (IaC) concepts using Markdown.
- Continue building a professional GitHub Cloud Computing Portfolio.

## Commands Executed

| Command | Purpose |
|---|---|
| `mkdir nextcloud-deployment` | Creates a new folder for the project. |
| `cd nextcloud-deployment` | Moves into the project directory. |
| `nano docker-compose.yml` | Creates or edits the Docker Compose configuration file. |
| `cat docker-compose.yml` | Displays the contents of the configuration file. |
| `docker-compose up -d` | Starts the application services in the background. |
| `docker-compose ps` | Displays the status of the running containers. |
| `docker-compose down` | Stops and removes the containers and network created by Compose. |

## Tools Used

- 🐳 **Docker** — Used to run applications inside containers.
- ⚙️ **Docker Compose** — Used to define and manage multiple containers through one configuration file.
- ☁️ **Nextcloud** — Provides the private cloud storage platform.
- 🗄️ **MariaDB** — Stores and manages the database information required by Nextcloud.
- 🖥️ **KillerCoda Ubuntu Playground** — Provides the Linux environment for executing commands and deploying the application.
- 📝 **Markdown** — Used to write and organize the laboratory documentation.

## Skills Learned

Through this activity, I learned how to deploy multiple containers that work together to run a single application. I also gained a better understanding of how Docker Compose uses a YAML file to organize service configurations and how Nextcloud communicates with MariaDB.

Additionally, I improved my skills in using Linux commands, editing files with Nano, and documenting technical procedures using Markdown.

Overall, this laboratory helped me understand how Docker Compose simplifies application deployment and management. It also introduced me to the concept of Infrastructure as Code, where infrastructure can be defined, organized, and deployed through configuration files rather than relying entirely on manual commands.
