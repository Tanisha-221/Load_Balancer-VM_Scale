What is scalability 
Where it is used-Networking, loadbalancer
When it will be used- After the application is created 
How it is used in azure- It will be a layer between user and infrastructure 
# Scalable Infrastructure in Azure Load Balancer Project

## Overview

This document highlights the use of **scalable infrastructure** in the context of a hands-on project built on **Microsoft Azure**. The project focuses on deploying a **Load Balancer** that efficiently distributes traffic across multiple virtual machines (VMs), ensuring high availability, reliability, and performance under variable loads.

---

##  What is Scalability?

**Scalability** refers to the system's ability to handle increased workload or demand by adding or adjusting resources without compromising performance or availability. In this project, scalability is a core concept implemented through **Azure Load Balancer** and **Virtual Machine Scale Sets**.

---

##  Where Scalability is Used

- **Networking**: Load balancer acts as a central point of traffic distribution across the network.  
- **Compute Layer**: VM Scale Sets enable automatic scaling of application instances based on traffic demand.  
- **Infrastructure Layer**: The load balancer sits between the users and backend services, ensuring seamless scaling behind the scenes.

---

##  When Scalability is Applied

Scalability is applied **after the application is deployed**. Once the application is live, the infrastructure is scaled up or down based on usage patterns, ensuring optimal performance and cost efficiency.

---

## How Scalability is Implemented

- A **Load Balancer** is deployed as an intermediary between users and backend VMs.  
- **Virtual Machine Scale Sets** automatically add or remove VMs based on defined metrics (like CPU usage or traffic load).  
-  **Load balancing rules** ensure only healthy VMs receive traffic.  
- Infrastructure is automated via **Azure CLI** or **PowerShell**, enabling repeatable and scalable deployments.

---

##  Skills Developed

Through this project, we developed the folllowing cloud skills:

- Designing and deploying scalable network architecture  
- Automating resource provisioning using Azure CLI/PowerShell  
- Implementing load balancing and traffic distribution  
- Managing and scaling compute resources  
- Documenting infrastructure using GitHub

---

##  Objective of the Project

The main goal is to **design and deploy a scalable and reliable infrastructure** using Azure services that mimic real-world enterprise cloud environments. This hands-on approach helps in understanding how modern cloud infrastructure is **built**, **managed**, and **documented** in a scalable way.




