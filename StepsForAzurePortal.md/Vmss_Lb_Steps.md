# Steps to create VMSS and LOAD-Balancer in azure portal

## Step1: Sign in to azure portal

1. Open [Azure Portal](https://portal.azure.com/#home)
2. Log-in with your azure account

This is the page of azure portal you'll see after log-in.

![alt text](<Screenshot 2025-08-21 145146.png>)

## Step 2: Create a resource group

1. In the left menu, click resouce group-> +Create  

2. Enter  

* **Subscription**: Select your subscription  
  * **Resource Group Name**: e.g., T-MyResourceGroup
  * **Region:** Enter the region you want to deploy

3. Click **Review** + **Create**.

## Step 3: Create a virtual Machine Scale Set (VMSS)

1. In the serch bar, type **Virtual Machine Scale Set** and click **Create**  
![alt text](<Screenshot 2025-08-21 150224.png>)  
2. Under **Basics:** tab  

* **Subscription:** Select ypour subscription.  
* **Resource Group:** Choose T-MyResourceGroup  
* **VirtualMachineScaleSetName:** e.g., T-Vmss
* **Region:** Same as resource group.
* **Availability Zone:** Select as needed (1, 2, or 3) or you can choose none. (Simplicity – Easier deployment, single-zone focus)
* **Orchestration Mode:** **Flexible** (Allows VM instances to be heterogeneous (different VM sizes, OS disks, etc.). Useful for custom workloads and mixed configurations)
* **Security Type:** Standard (Baseline – Default protection for general workloads)
* **Scaling Mode:** Auto-Scaling (Elasticity – Automatically adjusts to demand)
* **Image:** Select OS image (e.g., Windows 10 Pro, Version 22H2, x64, Gen 1) (Compatibility – Widely supported OS for enterprise apps, Gen 1 ensures legacy VM support)
* **Administrator account**
  * **Authentication type:** SSH or password
  * **Username/Password:** Set credentials
* **Licensing**

  * ✅ I confirm I have a Windows license ("Cost-saving" – Enables Azure Hybrid Benefit to reduce licensing costs)
  * ⬜ No license confirmation "(Inclusive" – Azure includes the license in the VM cost. Please confirm your selection)
![alt text](<Screenshot 2025-08-21 152243.png>) ![alt text](<Screenshot 2025-08-21 152805.png>)
## Step 3: Click Next-> Spot

**Delpoy with**

* **Spot VM only** (Runs on unused Azure capacity at a lower cost, but can be evicted anytime based on capacity availability. Ideal for test, dev, batch jobs, or other non-critical workloads)
* **Spot + on-demand VMs** (our VM runs continuously without risk of eviction. Resources are guaranteed while running, and pricing is fixed (standard rates). Ideal for production or critical workloads)

  ![alt text](<Screenshot 2025-08-21 153327.png>)

## Step 4:  Configure Disk

* Choose OS disk type (e.g., Standard SSD)
* Optional: Add data disks  
![alt text](<Screenshot 2025-08-21 153755.png>)

✅ Useful for apps that require local storage or persistent disk configurations.

## Step 5: Configure Network

* **Virtual Network:** Choose existing or create a new one
* **Subnet**: Select or create a new subnet
* **NIC Selection:** Associates the VMSS instances to the network, enabling communication and connectivity.

![alt text](<Screenshot 2025-08-21 154035.png>)

**LOAD BALANCER** Create a load balancer

* Give name to your **load balancer**
* Type **Public** (Allows external/public access to the VMSS via a public IP address)
* Protocol **TCP** (Ensures connection-oriented traffic (such as HTTP, HTTPS) is properly handled.)
* Frontend Port **80** (Port open to users (e.g., browsers) accessing the app or site)
* Backend Port **80** (Port used by VMSS instances to receive traffic forwarded from Load Balancer)
* Load Balancer Rule **Created** (Automatically balances incoming TCP traffic on port 80 across all healthy VM instances)
* Inbound NAT rule **Created** (Maps frontend ports to specific VM instance ports for direct RDP/SSH access, mainly for troubleshooting or admin tasks)

![alt text](<Screenshot 2025-08-21 154545-1.png>)

## Step 6: Management

* Manual or scheduled scaling only
* No auto-scaling by default in Flexible mode
![alt text](<Screenshot 2025-08-21 155133.png>)
✅ Why? Flexible mode focuses on control and customization, so scaling is manual or integrated via external tools like Azure Monitor + Logic Apps.

## Step 7: Health Probe Configuration – Current Status

Health Probes Not Configured:

* No health probe has been set up for the Load Balancer or VMSS instances yet.

* Without health probes, the Load Balancer cannot automatically detect unhealthy VM instances, so it will send traffic to all VMs regardless of their state.

* This might affect availability and user experience if some VM instances become unresponsive.

![alt text](<Screenshot 2025-08-21 155928.png>)

## Step 8: Advanced, Tags, Review

![alt text](<Screenshot 2025-08-21 160009.png>)

* **Set tags** (optional)

![alt text](<Screenshot 2025-08-21 161655.png>)

* Click Review + Create

* Once validated, click Create

 Wait for deployment to finish.

##  After Deployment – Load Balancer Setup (If Not Fully Configured)

Go to the Load Balancer resource.

Check:

Frontend IP configuration

Backend pool (linked to VMSS instances)

Health probes (e.g., HTTP on port 80)

Load balancing rules (e.g., port 80 -> 80)

✅ This ensures traffic is distributed only to healthy instances.

 After Deployment – Load Balancer Setup (If Not Fully Configured)

Go to the Load Balancer resource.

Check:

Frontend IP configuration

Backend pool (linked to VMSS instances)

Health probes (e.g., HTTP on port 80)

Load balancing rules (e.g., port 80 -> 80)

✅ This ensures traffic is distributed only to healthy instances.

![alt text](<Screenshot 2025-08-21 162319.png>) ![alt text](<Screenshot 2025-08-21 162419.png>) ![alt text](<Screenshot 2025-08-21 162507.png>)
![alt text](<Screenshot 2025-08-21 162549.png>) ![alt text](<Screenshot 2025-08-21 163238.png>)

##  Testing

Copy the Public IP of Load Balancer

Access: [Load-balancer](http://<LoadBalancer-IP>)

Refresh repeatedly to check response from different instances (if custom web app installed)
