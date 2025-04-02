provider "aws" {
  #aws_region = var.aws_region
  region = "us-east-1" 
  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
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
}
