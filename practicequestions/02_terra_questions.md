
21. What is only availabel in terraform enterprise or cloud workspace but not in the terraform CLI?
```
`Secure variable storage` is available only in Terraform Enterprise or Cloud workspaces and not in Terraform CLI.

Terraform Enterprise and Cloud workspaces provide additional features and functionality beyond what is available
in the open-source Terraform CLI. One of these features is the ability to store sensitive data, such as API keys
or passwords, securely within a workspace. This allows teams to share infrastructure code without exposing
sensitive information
```

22. You have used Terraform to create a development environment in the cloud and are now ready to destroy all the
infrastructure described by your Terraform configuration. To be safe, you would like to first see all the infrastructure
that will be deleted by Terraform. Which commands can you use to show all of the resources that will be deleted? 

```
Command: terraform plan -destroy (will show you a plan for destroying infra)

Command: terraform destroy - (will show you what the destroy command will do before asking for permission to continue)
```
