# Cloud Platform Comparison

| Category | AWS | Microsoft Azure | Google Cloud Platform |
| :--- | :--- | :--- | :--- |
| **Launch Year** | 2006 | 2010 | 2008 |
| **Compute Service** | Amazon EC2 | Azure Virtual Machines | Google Compute Engine |
| **Storage Service** | Amazon S3 | Azure Blob Storage | Google Cloud Storage |
| **Networking Service** | Amazon VPC | Azure Virtual Network (VNet) | Google Cloud VPC |
| **Identity Service** | AWS IAM | Microsoft Entra ID (formerly Azure AD) | Cloud IAM |
| **Infrastructure as Code (IaC)** | AWS CloudFormation | Azure Resource Manager (ARM) / Bicep | Google Cloud Deployment Manager |
| **Primary Strength** | Broadest range of services and market maturity | Seamless integration with enterprise Microsoft software | Superior data analytics, AI/ML, and containerization |
| **Ideal Organizations** | Startups to enterprises needing maximal scalability and service options | Existing Microsoft-centric enterprises and hybrid environments | Tech-first companies, data-heavy enterprises, and modern app startups |

---

## Analysis Questions

1. **Which cloud provider offers the broadest range of services?**
   Amazon Web Services (AWS) offers the broadest range of services, featuring over 200 fully featured offerings spanning compute, storage, databases, machine learning, and IoT. As the earliest pioneer in cloud computing, AWS has built the largest global infrastructure footprint and market share. Enterprise architects frequently default to AWS when building complex, highly specialized cloud systems due to this deep feature maturity.

2. **Which provider best integrates with Microsoft technologies?**
   Microsoft Azure provides the best native integration with Microsoft technologies like Active Directory, Windows Server, SQL Server, and Office 365. Organizations running existing legacy Microsoft infrastructure can seamlessly migrate, manage hybrid environments, and utilize existing licensing investments via Active Directory/Entra ID integration. Additionally, IT administrators favor Azure for enterprise environments due to native support for Azure DevOps pipelines and seamless Visual Studio integration.

3. **Which provider is strongest in Artificial Intelligence and Kubernetes?**
   Google Cloud Platform (GCP) is the industry leader in Artificial Intelligence and Kubernetes management. Because Google originally developed Kubernetes, GCP offers Google Kubernetes Engine (GKE), widely considered the most mature managed container orchestration platform available. DevOps and data engineering teams rely heavily on GCP to leverage custom Tensor Processing Units (TPUs) alongside Vertex AI for large-scale model training and data pipelines.

4. **Which cloud platform would you personally choose and why?**
   I would choose AWS for a production environment due to its unmatched industry adoption, massive service ecosystem, and multi-region reliability features. In professional practice, cloud engineers often pair AWS with multi-cloud tools like Terraform for infrastructure provisioning to avoid vendor lock-in. However, if the project workload centered strictly around advanced machine learning workloads or microservice-heavy Kubernetes clusters, GCP would be my top alternative.
