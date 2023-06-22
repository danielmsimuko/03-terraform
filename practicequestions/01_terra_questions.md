## Hashicorp Terraform Assosciate 

### Understand infrastructure as code (IaC) concepts

11. Terraform variables and outputs that set the "description" argument will store that description in the state file. t or f 
```
f. Terraform variables and outputs that set the "description" argument are not stored in the state file. The "description"
argument is used to provide a human-readable description of the variable or output, and it is intended to be used as
documentation for other users of the Terraform code.
```

12. key principals of infrastructure as code: 
```
a. self describing infrastructure
b. versioned infrastructure
c. idempotency
```

13. If you manually destroy infrastructure, what is the best practice reflecting this change in Terraform?
```
using command terraform refresh. this will try to find any resources held in the state file and update
with any drift that has happened in the provider outside of Terraform since it was last ran.

the config file is the only one not processed when terraform refresh is run and the state file is updated during the refresh
```

14. What information does the public Terraform Module Registry automatically expose about published modules?
```
optional/required input variables
default values and outputs 
```

15. What do these three string functions mean? split, join, chomp
```
split produces a list by dividing a string at every given separator

split(separator, string)
[
  "separator",
  "string",
]

join produces a string by concatenating all of the elements of the string provided

> join("-", ["foo", "bar", "baz"])
"foo-bar-baz"

chomp removes newline characters at the end of a string

> chomp("hello\n")
hello
```

16. You have provisioned some virtual machines (VMs) on Google Cloud Platform (GCP) using the gcloud command line tool.
However, you are standardizing with Terraform and want to manage these VMs using Terraform instead.

What are the two things you must do to achieve this?

```
A. use the terraform import command for the existing virtual machines. Allows you to import existing
infrastructure into your terraform state file.

B. write terraform config file for existing vms once they have been imported into the terraform statefile
```

17. You have recently started a new job at a retailer as an engineer. As part of this new role
you have been tasked with evaluating multiple outages that occurred during peak shopping time during the
holiday season. Your investigation found that the team is manually deploying new computeinstances and configuring each
compute instance manually. This has led to inconsistent configuration between each compute instance.
 
How would you solve this using infrastructure as code?
```
Implement a provisioning pipeline that deploys infrastructure configurations committed to a version control
system after it has undergone code reviews
```

18. What does the terraform init command do after it has be run
```
The terraform init command initializes a new or existing Terraform working directory by downloading and
installing any necessary plugins and modulesspecified in the configuration. It does not create a main.tf file or
any other configuration file in the current directory.
```

19. Why would you use the terraform taint command?

```
the terraform taint command can be used let terraform know that a resource has been tainted forcing it to
be destroyed and recreated on the next apply.
```

20. Terraform can import modules from a number of sources. What are the three sources?

```
GitHub repository
Local path
Terraform Module Registry
```



