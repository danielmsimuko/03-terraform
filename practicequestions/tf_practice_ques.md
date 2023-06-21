## Hashicorp Terraform Assosciate 

### Understand infrastructure as code (IaC) concepts

1. The terraform.tfstate file always matches your currently built infrastructure (t or f)

```
f. tfstate primarily looks at the state of current configuration and what you are now declaring in the main.tf. 
it will then decide to add/change/delete accordingly
```

2. One remote backend configuration always maps to a single remote workspace. (t or f)

```
f. terraform remote backend can work with either a single remote cloud workspace or multiple
similarly named remote spaces 
```
