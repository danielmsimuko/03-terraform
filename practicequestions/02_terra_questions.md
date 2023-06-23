
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

23. Which of the following is the correct way to pass the value in the variable num_servers into a module with the input servers?
```
correct way to pass a value in the var num_servers is servers = var.num_servers
```

24. A Terraform provisioner must be nested inside a resource configuration block. t or f?

```
Provisioners are used to execute scripts on a local or remote machine as part of resource creation or destruction.
Provisioners can be used to bootstrap a resource, cleanup before destroy, run configuration management, etc.

To use a provisioner in Terraform, you must include it as part of a resource configuration block.
```

25. What does the default "local" Terraform backend store?

```
The default "local" Terraform backend stores the state file on the local disk of the machine running Terraform.
The state file contains information about the resources managed by Terraform, such as their current state and any dependencies between
them. When running Terraform commands, such as terraform plan or terraform apply, Terraform reads the state file to determine
the current state of the resources and what changes need to be made to reach the desired state.
```

26. You have multiple team members collaborating on infrastructure as code (IaC) using Terraform, and want to apply formatting standards for readability.
How can you format Terraform HCL (HashiCorp Configuration Language) code according to standard Terraform style convention?

```
Run the terraform fmt command during the code review phase of your CI/CD process
```

