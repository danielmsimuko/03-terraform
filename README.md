## Terraform 

Notes on the way to Terraform Association 

### Infrastructure as Code

Writing down what you want to be deployed declaratively through code. Automated, quick and reduces human error

Can automate software defined networking and track the states of each resource deployed 

### Terraform workflow

`Write` - writing your terraform code is the first stage of the workflow. This generally starts of with a github repo as common practice 

`Planning` - When the code is written, code review is done to verify the code and what infrastructure will be built 

`Applying` - Is the last stage where you are ready to provision the infrastructure on the cloud platforms

### Initialising terraform 

`terraform init` initialises the working directory that contains the code. It firsts downloads the ancillary components that allow the code to work like modules and plugins i.e cloud providers. It also sets up the backend for storing terraform state files, a mechanism by which terraform tracks resources 






