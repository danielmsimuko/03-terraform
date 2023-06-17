# Installation

On a client PC, create a terraform directory, then an azure one to separate aws files or other cloud providers 

```
daniel@NT2201LB:~/terraform/azure$
```

Check if azure cli has been installed

```
daniel@NT2201LB:~/terraform/azure$ az --version
azure-cli                         2.49.0

core                              2.49.0
telemetry                          1.0.8

Dependencies:
msal                              1.20.0
azure-mgmt-resource               22.0.0

Python location '/opt/az/bin/python3'
Extensions directory '/home/daniel/.azure/cliextensions'

Python (Linux) 3.10.10 (main, May 19 2023, 08:20:31) [GCC 11.3.0]

Legal docs and information: aka.ms/AzureCliLegal

Your CLI is up-to-date

```

If azure cli has not been installed: use: 

```
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```

To connect to your account in azure, first check using: 

```
daniel@NT2201LB:~/terraform/azure$ az account show
{
  "environmentName": "AzureCloud",
  "homeTenantId": "a1b2",
  "id": "a1b2",
  "isDefault": true,
  "managedByTenants": [],
  "name": "a1b2",
  "state": "Enabled",
  "tenantId": "a1b2",
  "user": {
    "name": "dmsimuko",
    "type": "user"
  }
}`
```

If you are not yet connected, use: `https://learn.microsoft.com/en-us/cli/azure/authenticate-azure-cli`

Once you are here, you can now install terraform via official website and documentation: 

https://developer.hashicorp.com/terraform/tutorials/azure-get-started/install-cli

Verify terraform installation via:

```
daniel@NT2201LB:~/terraform/azure$ terraform -version
Terraform v1.5.0
on linux_amd64
```

You now have a successful installation. 


