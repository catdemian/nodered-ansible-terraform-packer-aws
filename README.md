# Node-Red on AWS using Packer, Ansible, and Terraform


This repository is intended to deploy Node-Red on AWS, Sao Paulo Region. If you want to use it on a different region you should change the following values on these files:

-  variable "availability_zones" on ./terraform-net/variables.tf
-  variable "region" on ./terraform-net/variables.tf
-  "region" on ./packer/packer.json
-  "base_ami"  on ./packer/packer.json  .Find a Ubuntu 18.04 base AMI 
-  variable "availability_zones" on ./terraform-hostdeploy/variables.tf
-  variable "region" on ./terraform-hostdeploy/variables.tf


## Setting things up:


### Cloning GIT Repository


- Run commmand `git clone https://github.com/catdemian/nodered-ansible-paker-terraform-aws.git`
- `cd ./nodered-ansible-paker-terraform-aws`
- Setup AWS Access Key, AWS Secret key on: ./terraform-hostdeploy/variables.tf , ./terraform-net/variables.tf  and ./packer/packer.json


## Node-Red Installation on AWS

### Create AWS network (VPC, Subnet, Security Gr)


1. Access terraform-net directory `cd ./terraform-net/`

2. Execute commmand `terraform init`

3. Execute commmand `terraform plan`

4. Execute commmand `terraform apply`


### Build Node-Red AMI using Packer

From the execution on terraform-net get the value of the following output:

   "aws_subnet_output"

1. Access terraform-net directory `cd ../packer/`

2. Provide subnet_id  in the packer.json file with the value of "aws_subnet_output" just gathered before.  `vi packer.json`

3. Execute command `packer build packer.json`


### Deploy Node-Red server with the AMI created by packer


1. Access terraform-hostdeploy directory `cd ../terraform-hostdeploy/`

2. Execute commmand `terraform init`

3. Execute commmand `terraform plan`

4. Execute commmand `terraform apply`


### Use Node-Red

From the execution on terraform-hostdeploy, gather the value of the public_eip output.

1. In your browser visit the URL http://"public_eip value":1880




1. Visit the
