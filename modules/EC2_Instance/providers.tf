/*provider "aws" {
  #aws_region = var.aws_region
  region = "us-east-1" 
  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
}*/

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
