# Laboratory 05: Cloud Data Engineering with MinIO

## Executive Overview

Following the successful deployment of containerized web workloads, this activity shifts focus toward cloud data infrastructure at CloudNova Technologies. 

Data persistence in modern cloud architecture relies on distinct paradigms. While legacy setups depend primarily on local block devices (Block Storage) or network-attached shared drives (File Storage), modern distributed platforms heavily leverage Object Storage to handle high-volume unstructured datasets such as media files, backups, and static assets. While Amazon S3 serves as the primary enterprise benchmark, this module focuses on provisioning a self-hosted, S3-compatible object storage cluster utilizing the open-source MinIO platform.

Using the KillerCoda environment, containerization concepts are combined with object storage principles to deploy a functional storage engine, establish storage buckets, and manage data ingress through a web interface.

---

## Core Learning Objectives

By completing this laboratory, the following technical competencies will be demonstrated:

* **Storage Architecture Analysis:** Distinguish the key operational differences between Block, File, and Object storage paradigms.
* **Containerized Deployment:** Provision an S3-compatible MinIO object storage instance using Docker execution parameters.
* **Network & Service Mapping:** Access internal container services through port exposure and web interface tunneling.
* **Data Lifecycle Operations:** Provision S3 storage buckets and execute object upload workflows via the MinIO console.
* **Technical Documentation:** Log cloud engineering workflows and operational tasks using structured Markdown.
* **Portfolio Integration:** Maintain continuous delivery of technical lab documentation within a GitHub repository.

---

## Toolchain & Infrastructure

| Tool / Technology | Technical Function |
|---|---|
| **KillerCoda** | Ubuntu sandbox runtime environment for executing container commands. |
| **Docker Engine** | Containerization runtime responsible for provisioning the MinIO engine. |
| **MinIO** | High-performance, S3-compatible object storage server. |
| **Web Browser** | Graphical interface used to interact with the MinIO administrative console. |
| **GitHub** | Version control repository hosting cloud project documentation. |

---

## Competencies & Technical Skills

* **Container Management:** Executing lifecycle management and inspection commands (`docker ps`, `docker run`).
* **Environment Configuration:** Mapping network host ports and specifying runtime environment parameters.
* **Object Storage Administration:** Managing bucket access, directory structures, and file ingestion within MinIO.
* **System Documentation:** Structuring technical guides and laboratory write-ups in Markdown.
