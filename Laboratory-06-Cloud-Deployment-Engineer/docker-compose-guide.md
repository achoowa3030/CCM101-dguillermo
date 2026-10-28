# Docker Compose Guide

## Overview

In this activity, I learned how to use Docker Compose to run Nextcloud and MariaDB as part of one application. Instead of configuring and starting each container individually, I used a `docker-compose.yml` file to organize their settings in one place. This made the deployment process easier to understand and manage.

## What Does the `services:` Block Do?

The `services:` section defines the different containers needed by the application. In my configuration, the `database` service is responsible for running MariaDB, while the `app` service runs Nextcloud. Each service has its own configuration, such as the Docker image, environment variables, and port settings. These settings allow both containers to work together properly.

## How Does Nextcloud Find the Database?

I used `MYSQL_HOST=database` to specify the location of the database. The name `database` matches the service name in the Docker Compose file. Docker Compose allows the containers to communicate through its internal network, making it possible for Nextcloud to connect to MariaDB without manually entering an IP address.

## Difference Between `docker run` and `docker-compose up -d`

The `docker run` command is used to create and start a single container by specifying its settings directly in the terminal. Meanwhile, `docker-compose up -d` uses a YAML configuration file to start multiple related services together in the background.

The main difference is that `docker run` is more suitable for managing individual containers, while Docker Compose is more convenient for applications that require multiple containers, such as Nextcloud and MariaDB. It also makes the configuration easier to reuse and maintain.

## What I Learned

Through this activity, I gained a better understanding of how Docker Compose organizes and manages multiple containers. I learned the purpose of the `services:` section, how Nextcloud connects to MariaDB using the service name, and how Docker Compose simplifies the deployment process.

Overall, this activity helped me understand the importance of using configuration files to manage applications with multiple components. It also improved my knowledge of Docker commands, container communication, and basic deployment procedures.
