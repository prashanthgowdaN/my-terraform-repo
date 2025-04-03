provider "aws" {
  region = "us-east-1"
  access_key = "AKIAVFIWISPQLW3I7KCQ"
  secret_key = "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"
}

resource "aws_instance" "prashanthVM" {
  ami = var.aws_ami.id
  instance_type = var.aws_instance_type

 tags = {
    Name        = "TestVM"
    Environment = "Development"
    Project     = "Terraform-Project"
 }
}
output "instance_id" {
  value = aws_instance.prashanthVM.id
}


/*module "vm01" {
  source        = "./modules"
  ami_id        = "ami-08b5b3a93ed654d19"
  instance_type = var.instance_type
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


module "EC2VMs" {
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
 }*/
