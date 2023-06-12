### Installation 

On an linux machine: 

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

### Terraform Providers

Are a way of abstracting integrations with API control layer of the infrastructure vendors 

Looks for providers in the terraform providers registry

### Terrraform State

tf statefile helps map the already managed infrastructure within aws/azure to the terraform main code 

This file is a JSON file containing all the metadata regarding a terraform deployment and details of the deployments it has already done

Example below: 
```
{
  "version": 4,
  "terraform_version": "1.5.0",
  "serial": 3,
  "lineage": "a1b2c3d4e5",
  "outputs": {},
  "resources": [],
  "check_results": null
}
```

Important to never lose a tfstatefile or let it fall into the wrong hands as sensitive date could reside in it
