## Deploying Terraform On Azure 

This guide is to deploy a test suite for a linux virtual machine and all components neccesary. 

1.  Download Azure CLI on a Linux machine or take advantage of WSL to perform this action.

`https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux?pivots=apt`

2. Log into your azure account via `portal.azure.com` and use WSL to link the device to the azure account via `az login --tenant 918f4781-xxxxx-xxxx-3465d6decc75d` command with the string being your tenant id.

3. Access SSH keys feature within portal or generate or within CLI via `az sshkey create --name "mySSHKey" --resource-group "myResourceGroup"` . Follow the link below for more info:

`https://learn.microsoft.com/en-us/azure/virtual-machines/ssh-keys-azure-cli` 

4. Download the SSH key and store it within the same directory as the `main.tf` file 

5. Complete the writing of the code then call the following commands: 

`terraform fmt` -  which means terraform format. This will ensure unity within the terraform code and any errors will be picked up at this point. 

if successful at this stage you should see: 

```
daniel@NT2201LB:~/terraform$ terraform fmt
main_azure.tf
```

`terraform validate` - is the next command to validate the plan. If there are any errors in the code, it will also show up and appear here. A successful validation will be met with: 

You should see: 

```
daniel@NT2201LB:~/terraform$ terraform validate
Success! The configuration is valid
```

`terraform apply` - will be the next command. this step will show you all the changes to take place once you have accepted and said yes to make the changes 

You should see something like this and a prompt for the string `yes`
```
Plan: 7 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.
```

lastly: you should see an output within the shell that resembles: 

```
azurerm_resource_group.terra-rg: Creating...
azurerm_resource_group.terra-rg: Creation complete after 1s [id=/subscriptions/2e/resourceGroups/my-resource-group]
azurerm_public_ip.terra-ip: Creating...
azurerm_virtual_network.terra-vn: Creating...
azurerm_network_security_group.terra-nsg: Creating...
azurerm_public_ip.terra-ip: Creation complete after 2s [id=/subscriptions/2e/resourceGroups/my-resource-group/providers/Microsoft.Network/publicIPAddresses/my-public-ip]
azurerm_network_security_group.terra-nsg: Creation complete after 2s [id=/subscriptions/2e/resourceGroups/my-resource-group/providers/Microsoft.Network/networkSecurityGroups/my-nsg]
azurerm_virtual_network.terra-vn: Creation complete after 4s [id=/subscriptions/2e/resourceGroups/my-resource-group/providers/Microsoft.Network/virtualNetworks/my-virtual-network]
azurerm_subnet.terra-subn: Creating...
azurerm_subnet.terra-subn: Creation complete after 4s [id=/subscriptions/2/resourceGroups/my-resource-group/providers/Microsoft.Network/virtualNetworks/my-virtual-network/subnets/my-subnet]
azurerm_network_interface.terra-nic: Creating...
azurerm_network_interface.terra-nic: Creation complete after 0s [id=/subscriptions/2/resourceGroups/my-resource-group/providers/Microsoft.Network/networkInterfaces/my-nic]
azurerm_linux_virtual_machine.terra-vm: Creating...
azurerm_linux_virtual_machine.terra-vm: Still creating... [40s elapsed]sb/resourceGroups/my-resource-group/providers/Microsoft.Compute/virtualMachines/my-vm]

Apply complete! Resources: 7 added, 0 changed, 0 destroyed.
daniel@NT2201LB:~/terraform$ 
```


