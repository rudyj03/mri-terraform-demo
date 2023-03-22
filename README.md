# Terraform Intro Demo

This demo uses local AWS credentials to create a VM, security group, and keypair in AWS to launch an EC2 instance and install a simple web application.

Prerequisites:
Install Terraform: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
Have an ssh keypair generated under `~/.ssh/id_rsa` and `~/.ssh/id_rsa.pub` (or modify the appropriate defaults in `variables.tf`)
Have AWS credentials configured locally.  See https://registry.terraform.io/providers/hashicorp/aws/latest/docs for information on how to configure this.

To test this demo:
Run `terraform init` and then `terraform plan` from this directory.
You should see a plan output outlining the resources terraform will create.
From there, run `terraform apply` to create the resources.  
At the end of the run, one of the outputs will be a public IP.  Enter that IP in a browser to access the web application.
Once you're done, run `terraform destroy` to remove all of the AWS resources.