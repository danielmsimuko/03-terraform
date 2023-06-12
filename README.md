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

### Key concepts - Plan, Apply, Destroy 

`terraform plan` -  reads the code from `main.tf` and creates/shows a plan for deployment. Allows user to review action plan before executing anything. This stage, authentication credentials are used to connect to infrastructure 

`terraform apply` -  deploys the instructions and statements in the code to cloud provider. Updates state file for tracking mechanisms 

`terraform destroy` - destroys the infrastructure by looking at the stored statefile and destroys all resources created. Should be used with caution






