31. Which options can be used to keep secrets out of Terraform configuration files?

```
A. Providers can be used to supply variable values e.g vault
B. Environment variables can be used i.e -var-file="secret.tfvars" 
C. To input parameters for the apply command e.g export TF_VAR_db_username=admin TF_VAR_db_password=adifferentpassword
```

32. How do you manually specify a dependency in terraform? 
```
You can use depends_on to explicitly declare the dependency. You can also specify multiple resources in the
depends_on argument, and Terraform will wait until all of them have been created before creating the target resource.
```
33. You have never used Terraform before and would like to test it out using a shared team account for a cloud provider.
The shared team account already contains 15 virtual machines (VM). You develop a Terraform configuration containing one VM,
perform terraform apply, and see that your VM was created successfully. What should you do to delete the newly-created VM with Terraform?

```
You can simply use command terraform destroy since manually created resources will not be reflected in statefile.
````
34. asdas


37. asda

38. asda

39. asda

40. asda

41. asda

42. asd
