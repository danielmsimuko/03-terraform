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

16. You have provisioned some virtual machines (VMs) on Google Cloud Platform (GCP) using the gcloud command line tool. However, you are standardizing with Terraform and want to manage these VMs using Terraform instead. What are the two things you must do to achieve this?

```
A. use the terraform import command for the existing virtual machines. Allows you to import existing
infrastructure into your terraform state file.

B. write terraform config file for existing vms once they have been imported into the terraform statefile. these need a desired state. 
```






