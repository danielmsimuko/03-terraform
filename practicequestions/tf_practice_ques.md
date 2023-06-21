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

3. How is terraform remote backend different than other state backends such as S3, consul?
```
a. the remote backend can runs on dedicated infrastructure on premises or in 
terraform cloud
```

4. What is the workflow for deploying new infrastructure with Terraform?
```
Write terraform config gile 
run terraform init to initialise
run terraform plan to plan changes
terraform apply to create new infra
```

5. a provider configuration block is required in every terraform configuration. A = yes

```
provider "provider_name" {
  features {
      etc...
  }
}

Terraform configurations must declare which providers they require so that Terraform can install and use them.
```

6. You run a local-exec provisioner in a null resource called null_resource.run_script and realize that you need to rerun the script. Which of the following commands would you use first?
```
terraform apply -replace="null_resource.run_script"
```

7. Which provisioner invokes a process on the resource created by Terraform?
```
remote-exec provisioner invokes a script on a remote resource after it has been created
```

8. What command does Terraform require the first time you run it within a configuration directory?

```
terraform init --- used to intialise the working directory containing terraform
configuration files
```

9. Terraform providers can: ?
```
A. be written by individuals and maintained by a community of users 
B. major cloud vendors an non-cloud vendors can write, maintain, or collaborate on terraform providers
```

10. You have deployed a new webapp with a public IP address on a cloud provider. However, you did not create any outputs for your code.

What is the best method to quickly find the IP address of the resource you deployed?

```
Run terraform state list to find the name of the resource, then terraform state show to find the attributes including public IP address
```
