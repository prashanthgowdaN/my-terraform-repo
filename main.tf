provider "aws" {
  access_key       = var.aws_access_key
  secret_key       = var.aws_secret_key
  region           = var.aws_region
}
# main.tf (root directory)

module "EC2_VM01" {
  source        =  "./modules/dev"  # Path to the module directory
  instance_type =  "var.aws_instance_type" 
  ami_id        =  "var.aws_ami"  # Replace with yourI ID
  #instance_name = "my-terraform-vm"

 network_interface {
    device_index = 0
    subnet_id    = "subnet-0e67770a39a2f9715"
    #security_groups = ["sg-xxxxxxxx"]
    associate_public_ip_address = flase
  }
}

