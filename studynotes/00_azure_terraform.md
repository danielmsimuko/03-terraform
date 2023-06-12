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

```
daniel@NT2201LB:~/terraform$ terraform fmt
main_azure.tf
```

`terraform validate` - is the next command to validate the plan. If there are any errors in the code, it will also show up and appear here. A successful validation will be met with: 

```
daniel@NT2201LB:~/terraform$ terraform validate
Success! The configuration is valid
```

You should see a 
### Logging into Azure tenant 

`az login --tenant 918f4781-xxxxx-xxxx-3465d6decc75d` 

Go through the prompts and login into the shell

Write `main.tf` and deploy

###
