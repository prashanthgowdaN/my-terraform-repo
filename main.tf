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
   #access_key = "aws_access_key"
   #secret_key = "aws_secret_key"
}
# main.tf (root directory)

/*module "EC2_VM02" {
  source        =  "./modules/dev"  # Path to the module directory
  instance_type =  "var.aws_instance_type" 
  ami_id        =  "ami-08b5b3a93ed654d19"  # Replace with yourI ID
  aws_access_key       = var.aws_access_key
  aws_secret_key       = var.aws_secret_key
  #instance_name = "my-terraform-vm"
}*/

module "EC2_VM01" {
  source        =  "./modules/EC2_Instance"  # Path to the module directory
  instance_type =  "var.aws_instance_type" 
  ami_id        =  "ami-08b5b3a93ed654d19"  # Replace with yourI ID
  access_key       = var.aws_access_key
  secret_key       = var.aws_secret_key
  #instance_name = "my-terraform-vm"
}
