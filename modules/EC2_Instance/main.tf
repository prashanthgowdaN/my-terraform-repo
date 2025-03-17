terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_instance" "testVM" {
  ami = ""
  instance_type = "t2.micro"
  key_name= "aws_key"
}

output "instance_id" {
  value = aws_instance.testVM.id
}
