## For amazon linux installs: 

```
sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
```

and for centos/redhat linux

```
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install terraform
```
Once in create a link to your AWS instance by creating an access key and secret key. These credentials will allow you to push infrastructure from local machine

```
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

#Configure the AWS Provider
provider "aws" {
  region     = "eu-west-2"
  access_key = "abcde"
  secret_key = "1a2b"
}

# Create VPC
resource "aws_vpc" "terra_vpc" {
  cidr_block = "10.0.0.0/16"
}

# Create subnet within the VPC
resource "aws_subnet" "terra_subnet" {
  vpc_id            = aws_vpc.terra_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "eu-west-2a"
}

#Create security group within the VPC
resource "aws_security_group" "terra_sec_grp" {
  name        = "terra_sec_grp"
  description = "security group for EC2 instance"
  vpc_id      = aws_vpc.terra_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allowing SSH access from any IP for illustration purposes
  }
}

#Create EC2 instance
resource "aws_instance" "terra_vm" {
  ami                         = "ami-07650ecb0de9bd731"
  instance_type               = "t2.medium"
  key_name                    = "aws-terra"
  vpc_security_group_ids      = [aws_security_group.terra_sec_grp.id]
  subnet_id                   = aws_subnet.terra_subnet.id
  associate_public_ip_address = true  # Assign a public IP to the instance

  tags = {
    Name = "terra-vm"
  }

}

```
