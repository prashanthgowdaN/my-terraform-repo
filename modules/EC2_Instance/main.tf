provider "aws" {
  region = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

module "vm01" {
  source        = "../modules"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  instance_name = "testvm01"
}

tags = {
    Name = "testvm01"
    Environment = "Dev_testing"
    TestENV     = "Destroy"
  }

output "instance_id" {
  value = module.vm01.instance_id
}

output "public_ip" {
  value = module.vm01.public_ip
}


/*module "EC2VMs" {
  source        =  "./modules  # Path to the module directory
  instance_type  = "t2.micro" 
  ami_id        =  "ami-08b5b3a93ed654d19"  # Replace with yourI ID
  #instance_name = "my-terraform-vm"
}
tags = {
    Name = "PrashanthV"
    Environment = "Prod"
    TestENV     = "Destroy"
  }
}
output "instance_id" {
  value = aws_instance.EC2VMs.id
}

terraform {
   required_version = ">= 1.0.0"
 
   required_providers {
     aws = {
       source  = "hashicorp/aws"
       version = "~> 5.0"
     }
   }
 }

resource "aws_instance" "prashanthVM" {
  ami = "ami-08b5b3a93ed654d19"
  instance_type = "t2.micro"

 tags = {
    Name        = "TestVM"
    Environment = "Development"
    Project     = "Terraform-Project"
 }
}
output "instance_id" {
  value = aws_instance.prashanthVM.id
}*/
