module "TestingVM" {
  source        =  "./modules  # Path to the module directory
  instance_type  = "t2.micro" 
  ami_id        =  "ami-08b5b3a93ed654d19"  # Replace with yourI ID
  #instance_name = "my-terraform-vm"
}
tags = {
    Name = "VMtest"
    Environment = "dev"
    TestENV     = "Destroy"
  }
}
output "instance_id" {
  value = aws_instance.TestVM.id
}

/*resource "aws_instance" "TestVM" {
  ami = "ami-08b5b3a93ed654d19" 
  instance_type  = "t2.micro"
  #key_name      = var.key_name
  #subnet_id     = data.aws_subnet_ids.default_subnet.ids[0]  # Use the default subnet ID
  #vpc_security_group_ids = [data.aws_security_group.default_sg.id]  # Use the default security group
  
tags = {
    Name = "Module_test"
    Environment = "dev"
    TestENV     = "Destroy"
  }
}

output "instance_id" {
  value = aws_instance.TestVM.id
}*/
