provider "aws" {
  region = "us-east-1"
  access_key = "AKIAVFIWISPQLW3I7KCQ"
  secret_key = "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"
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

