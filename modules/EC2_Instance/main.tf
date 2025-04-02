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
  value = aws_instance.TestVM.id
}

/*terraform {
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
