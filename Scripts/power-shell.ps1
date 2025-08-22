# Step 1: Create a Resource Group

New-AzResourceGroup -ResourceGroupName "myResourceGroup" -Location "EastUS"

## Create a Virtual Machine Scale Set

#First, set an administrator username and password for vm instaances

$cred = Get-Credential

create a Virtual Machine Scale Set to distribute traffic to the individual VM instances, a load balancer is also created. 
The load balancer includes rules to distribute traffic on TCP port 80, and allow remote desktop traffic on TCP port 3389 and PowerShell remoting on TCP port 5985

New-AzVmss -ResourceGroupName "myResourceGroup" -VMScaleSetName "myScaleSet" -OrchestrationMode "Flexible" -Location "EastUS" -Credential $cred

# View the VM instances in a scale set

Get-AzVM -ResourceGroupName "myResourceGroup"

# To view additional information about a specific VM instance

Get-AzVM -ResourceGroupName "myResourceGroup" -name "myScaleSet_instance1"

# Clean up resources

Remove-AzResourceGroup -Name "myResourceGroup" -Force -AsJob