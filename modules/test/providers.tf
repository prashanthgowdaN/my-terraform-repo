provider "aws" {
  region     = "us-east-1"      # Set your desired AWS region
  access_key = var.aws_access_key  # Reference to a variable for access key
  secret_key = var.aws_secret_key  # Reference to a variable for secret key
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
