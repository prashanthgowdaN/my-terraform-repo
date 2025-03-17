terraform {
  required_version = ">= 1.0.0"
required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
      region = "us-east-1"  # Choose your region
      access_key = var.aws_access_key
      secret_key = var.aws_secret_key
    }
  }
}
