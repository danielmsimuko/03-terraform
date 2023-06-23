
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
The state file contains information about the resources managed by Terraform, such as their current state and any dependencies
between them. When running Terraform commands, such as terraform plan or terraform apply, Terraform reads the state file
to determine the current state of the resources and what changes need to be made to reach the desired state.
```

26. You have multiple team members collaborating on infrastructure as code (IaC) using Terraform, and want to apply formatting
standards for readability. How can you format Terraform HCL code according to standard Terraform style convention?

```
Run the terraform fmt command during the code review phase of your CI/CD process
```

27. What value does the Terraform Cloud/Enterprise private module registry provide over the public Terraform Module Registry?

```
Among other things, The ability to restrict modules to members of Terraform Cloud or Enterprise organization is one benefit
that terraform enterprise has ove the open source version. 
Other benefits include operational efficiency and reduced deployment times with more complex infrastructure.
```

28. You have declared a variable called var.list which is a list of objects that all have an attribute id. What options do you
have in order to produce a list of the ID's?

```
Option A: var.list[*].id, uses the splat operator [*] to iterate over all elements of the var.list list and then accesses
the id attribute of each object. The result is a list of all the id values.

Option B, [ for o in var.list : o.id ], uses a list comprehension to iterate over each object in the var.list list and create
a new list that contains only the id attribute of each object.
```

29. What are some of the arguments you can use when declaring a terraform variable 

```
default - A default value which then makes the variable optional.
type - This argument specifies what value types are accepted for the variable.
description - This specifies the input variable's documentation.
validation - A block to define validation rules, usually in addition to type constraints.
sensitive - Limits Terraform UI output when the variable is used in configuration.
nullable - Specify if the variable can be null within the module.
```


































