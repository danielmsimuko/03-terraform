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
```

14. 
