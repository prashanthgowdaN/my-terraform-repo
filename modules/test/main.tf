provider "aws" {
  region     = "us-east-1"      # Set your desired AWS region
  access_key   = var.aws_access_key  #"AKIAVFIWISPQNDBISYW5"
  secret_key   = var.aws_secret_kye  #"37b58HWomG8Bda6bZ7eTzqVMOyU15kpAk7KJf1qv"
}

resource "aws_instance" "TestVM1" {
  ami         = var.ami_id
  instance_type  = "t2.micro"
  tags = {
     owner = "Prashanth1"
     Name  = "dev-VM-02"
  }
}

resource "aws_instance" "TestVM2" {
  ami         = var.ami_id
  instance_type  = "t2.micro"
  tags = {
     owner = "Prashanth2"
     Name  = "dev-VM-01"
     key   = "Destroy"
  }
}

resource "aws_instance" "TestVM3" {
  ami         = var.ami_id  #"ami-08b5b3a93ed654d19"
  instance_type  = "t2.micro"
  tags = {
     owner = "Prashanth3"
     Name  = "dev-VM-03"
  }
}

/*module "vm_1" {
  source        = "./modules"
  ami_id        = var.ami_id
  #instance_type = var.instance_type
  instance_name = "dev-vm-1"
}

module "vm_2" {
  source        = "./modules"
  ami_id        = var.ami_id
  #instance_type = var.instance_type
  instance_name = "dev-vm-2"
}

module "vm_3" {
  source        = "./modules"
  ami_id        = var.ami_id
  #instance_type = var.instance_type
  instance_name = "dev-vm-3"
}

output "vm_1_instance_id" {
  value = module.vm_1.instance_id
}

output "vm_2_instance_id" {
  value = module.vm_2.instance_id
}

output "vm_3_instance_id" {
  value = module.vm_3.instance_id
}*/


/*module "TestingVM" {
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

resource "aws_instance" "TestVM" {
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
