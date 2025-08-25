# 📘 Scalable Azure Resource Management with Load Balancer

## 📌 Overview

This project demonstrates how to design and deploy a **scalable infrastructure on Microsoft Azure**, focusing on the configuration of a **Virtual Machine Scale Set (VMSS)** integrated with a **Load Balancer**. It provides practical experience in cloud resource management, automation, networking, and documentation best practices.

---

## 🎯 Objective

To deploy and manage scalable Azure resources using:

- Azure Load Balancer (Public)
- Virtual Machine Scale Sets (Flexible Orchestration)
- Networking components (VNet, NIC, Subnet)
- Automation tools like Azure CLI / PowerShell
- Documentation management with GitHub

---

## ✅ Scope

| Aspect   | Detail                                                                 |
|----------|------------------------------------------------------------------------|
| **What** | **Scalability** – Deploy infrastructure that scales automatically      |
| **Where**| **Networking & Load Balancer** – Sits between the user and infrastructure |
| **When** | **After application deployment** – Ensures high availability and routing |
| **How**  | Acts as a **layer between user and VMSS**, distributing traffic intelligently |

---

## 🛠️ Technologies & Services Used

| Component                 | Description                                                         |
|--------------------------|---------------------------------------------------------------------|
| **Azure Load Balancer**  | Distributes public traffic across VM instances                      |
| **VM Scale Set (Flexible)** | Autoscaling and flexible VM deployments                            |
| **Windows 10 Pro 22H2**  | Base image for VM instances                                         |
| **Spot VMs**             | Cost-effective compute capacity                                     |
| **Premium SSD Disks**    | High-performance disk storage                                       |
| **Azure CLI / PowerShell** | (Optional) Automation tools                                       |
| **GitHub**               | Documentation and version control                                   |

---

## 🧱 Architecture Diagram

User --> Azure Load Balancer --> Virtual Machine Scale Set (2+ VMs)
|
Virtual Network
|
Subnet / NICs

---

## 📋 Configuration Summary

| Configuration Area      | Choices Made                      | Reasoning                       |
|--------------------------|-----------------------------------|----------------------------------|
| **Security Type**        | Standard                          | Baseline protection             |
| **Scaling Mode**         | Autoscaling                       | Elastic adjustment to demand    |
| **Availability Zones**   | None                              | Simplicity                      |
| **Image**                | Windows 10 Pro 22H2 Gen1          | Compatibility                   |
| **VM Priority**          | Spot VM Only                      | Cost-efficiency                 |
| **Disk Type**            | Premium SSD                       | Performance                     |
| **Key Management**       | Platform-managed key              | Simplicity and security         |
| **NIC**                  | Selected during setup             | Enables connectivity            |
| **Load Balancer Name**   | `T-Load_Balancer`                 | Identifier                      |
| **Load Balancer Type**   | Public                            | External traffic access         |
| **Protocol**             | TCP                               | Standard for HTTP               |
| **Ports**                | Frontend 80 → Backend 80          | Web access                      |
| **Load Balancer Rule**   | Configured                        | Traffic distribution            |
| **Inbound NAT Rule**     | Configured                        | Direct VM access (admin)        |
| **Health Probe**         | Not configured                    | To be added post-deployment     |

---

## 🔍 Learnings & Outcomes

- Understood how to configure **VMSS with Load Balancer**
- Learned basics of **Azure networking (NIC, VNet, Subnets)**
- Practiced using **Spot VMs** for cost savings
- Identified the need for **health probes** in production systems
- Improved **cloud documentation skills** using Markdown and GitHub

---

## 🔄 Recommendations

| Action                      | Purpose                                  |
|----------------------------|------------------------------------------|
| Add Health Probe           | Ensure traffic only reaches healthy VMs  |
| Add HTTPS Rule             | Secure frontend access                   |
| Configure Scaling Rules    | Based on CPU or memory metrics           |
| Export to ARM or Bicep     | Enable Infrastructure-as-Code reuse      |
| Push to GitHub             | For version control and collaboration    |

---

## 📂 GitHub Best Practices

- Save this documentation as `README.md`
- Create a `/docs/` folder for:
  - CLI scripts
  - Diagrams
  - Screenshots
- Use Git to track infrastructure changes
- Include `azuredeploy.json` or Bicep templates if using IaC

---

## ✅ Final Note

This project builds foundational skills in **cloud resource provisioning**, **scalable infrastructure**, and **Azure Load Balancer deployment**. It prepares you for real-world scenarios in enterprise environments where scalability, availability, and cost-efficiency are essential.
