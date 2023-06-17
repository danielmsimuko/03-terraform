# 03 - Learning Terraform

Terraform is popular infrastructure as code tool used to deploy infrastructure to cloud platforms declaratively through code. This means infrastructure can be deployed automatically, quickly, reduce human error and be reliable. 

Terraform works by tracking the states of each resource deployed and referencing it to the current set of deployed infrastructure to determine the end state or what it should be. This tracking is done in a file called the `tfstate` file. 

## Terraform workflow

`Write` - writing your terraform code is the first stage of the workflow. This generally starts of with a github repo as common practice 

`Planning` - When the code is written, code review is done to verify the code and what infrastructure will be built 

`Applying` - Is the last stage where you are ready to provision the infrastructure on the cloud platforms

## Initialising terraform 

Once terraform is installed initialising can be done

`terraform init` initialises the working directory that contains the code. It firsts downloads the ancillary components that allow the code to work like modules and plugins i.e cloud providers. It also sets up the backend for storing terraform state files, a mechanism by which terraform tracks resources 

## Key concepts - Plan, Apply, Destroy 

`terraform plan` -  reads the code from `main.tf` and creates/shows a plan for deployment. Allows user to review action plan before executing anything. This stage, authentication credentials are used to connect to infrastructure 

`terraform apply` -  deploys the instructions and statements in the code to cloud provider. Updates state file for tracking mechanisms 

`terraform destroy` - destroys the infrastructure by looking at the stored statefile and destroys all resources created. Should be used with caution

## Understanding terraform code

01. Code below is an example of a provider configuration

```
provider "aws"{
    region = "us-east-1"
}
```

02. Code below is an example of a resource configuration. In this example, resource is the keyword, aws_instance is the name of resource by the cloud provider and web is the user provided arbitrary name. In the curly brackets, the resource config arguments are listed like instance type and ami. These will change per resource type 

```
resource "aws_instance" "web" {
    ami    = "ami-a1b2c3d4"
    instance_type = "t2.micro"
}
```

To access the resource above you would use `aws_instance.web` argument. You can then access any attributes that this resource has within your code 

3.0 Below is an example of a data resource block. In this instance we have all the same things as before but the data source arguments are tracking details of an ALREADY EXISTING resource 

```
data "aws_instance" "vm1" {
    instance_id = "i-1234567abcdef"
}
```

