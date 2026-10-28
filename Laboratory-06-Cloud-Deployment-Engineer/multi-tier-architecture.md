# Multi-Tier Architecture

## What is a Two-Tier Architecture?

A two-tier architecture is a system made up of two main components: the web/application tier and the database tier. In this laboratory activity, we use Nextcloud as the web application and MariaDB as the database. Both run in separate Docker containers and work together to provide a private cloud storage system.

## The Web/Application Tier

The web/application tier is the part of the system that users access through their web browsers. In our setup, Nextcloud allows users to upload, view, organize, and manage their files. It also processes user requests and communicates with the database to save or retrieve the necessary information.

## The Database Tier

The database tier is responsible for storing and organizing the information needed by the application. In this setup, MariaDB serves as the database for Nextcloud, storing details such as user accounts, file information, and other application data. This helps Nextcloud access the information it needs whenever a user performs an action.

## Why Separate Them?

Separating the web application and database into different containers makes the system easier to manage, maintain, and troubleshoot. Each component can be updated or configured independently without affecting the entire system. It also provides flexibility because the containers can be maintained and adjusted based on their individual requirements. This setup helps keep the private cloud storage system organized and efficient.
