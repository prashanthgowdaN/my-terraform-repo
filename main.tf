terraform {
  required_version = ">= 1.0.0"
required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# main.tf (root directory)

module "vm_module" {
  source        = "./modules/dev"  # Path to the module directory
  aws_region    = "us-east-1"
  instance_type = "t2.micro"
  ami_id        = "ami-08b5b3a93ed654d19"  # Replace with your AMI ID
  instance_name = "my-terraform-vm"
}

