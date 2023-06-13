### Provisioners

Within terraform code, each inividual resource can have its own provisioner defining the connection method and there actions commands or scripts to execute 

Creation time and destroy time are provisioners which you can set to run when a resource is being run or destroyed

### Best Practices 

Use provisioners sparingly
terraform cannot track changes to provisioners as they can take any independant action, hence they are not tracked by terraform state files

Recommended for use when you want to invoke actions not covered by terraforms declarative model

If the command within a provisioner returns non-zero code, its considered failed and underlying resource is tainted

### Terraform state 

`terraform state list` - lists out all the resources tracked by the terraform state file 

`terraform state rm` - delete a resource from the terraform state file 

`terraform state show` - show details of a resource tracked in the terraform state file 

Local storage is where state files are saved but we can save them remotely. Examples include AWS S3, google cloud storage etc... allows sharing state files between distributed teams   

Remote state storage also allows for locking state so parallel executions dont coincide and can have a system where output files can be accessed elsewhere 

### Modules 

A module is a container for multiple resources used together 

Every terraform configuration has at least one module called root 

 

 


