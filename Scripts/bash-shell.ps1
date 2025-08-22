## Create a resource group

az group create --name myResourceGroup --location eastus

## Create a scale set

az vmss create --resource-group myResourceGroup --name myScaleSet --orchestration-mode flexible --image <SKU image> --admin-username azureuser --generate-ssh-keys

## View information about the VM instances in your scale set

az vm list --resource-group myResourceGroup --output table

## Clean up resources
az group delete --name myResourceGroup --no-wait --yes

