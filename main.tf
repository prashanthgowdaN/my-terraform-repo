terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
   region = "us-east-1"
   access_key = var.aws_access_key
   secret_key = var.aws_secret_key
}
# main.tf (root directory)

module "EC2_VM02" {
  source        =  "./modules/dev"  # Path to the module directory
  instance_type =  "var.aws_instance_type" 
  ami_id        =  "ami-08b5b3a93ed654d19"  # Replace with yourI ID
  aws_access_key       = var.aws_access_key
  aws_secret_key       = var.aws_secret_key
  #instance_name = "my-terraform-vm"
}

resource "aws_instance" "Template" {
  ami = "ami-08b5b3a93ed654d19" 
  instance_type  = "t2.micro"
  #key_name      = var.key_name
  #subnet_id     = data.aws_subnet_ids.default_subnet.ids[0]  # Use the default subnet ID
  #vpc_security_group_ids = [data.aws_security_group.default_sg.id]  # Use the default security group

/*module "EC2_VM01" {
  source        =  "./modules/EC2_Instance"  # Path to the module directory
  instance_type =  "var.aws_instance_type" 
  ami_id        =  "ami-08b5b3a93ed654d19"  # Replace with yourI ID
  #access_key       = var.aws_access_key
  #secret_key       = var.aws_secret_key
  #instance_name = "my-terraform-vm"
}*/
