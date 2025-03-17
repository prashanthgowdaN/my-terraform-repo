terraform {
  required_version = ">= 1.0.0"
required_providers {
    aws = {
      access_key = "AKIAVFIWISPQPCZOFGSO"
      secret_access_key = "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"
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# main.tf (root directory)

module "EC2_VM" {
  source        = "./modules/dev"  # Path to the module directory
  aws_region    = "us-east-1"
  instance_type = "t2.micro"
  ami_id        = "ami-08b5b3a93ed654d19"  # Replace with your AMI ID
  instance_name = "my-terraform-vm"
}

