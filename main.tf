provider "aws" {
  aws_access_key       = var.aws_access_key
  aws_secret_key       = var.aws_secret_key
  region           = var.aws_region
}
# main.tf (root directory)

module "EC2_VM02" {
  source        =  "./modules/dev"  # Path to the module directory
  instance_type =  "var.aws_instance_type" 
  ami_id        =  "ami-08b5b3a93ed654d19"  # Replace with yourI ID
  aws_access_key       = var.aws_access_key
  aws_secret_key       = var.aws_secret_key
  #instance_name = "my-terraform-vm"
}

module "EC2_VM01" {
  source        =  "./modules/EC2_Instance"  # Path to the module directory
  instance_type =  "var.aws_instance_type" 
  ami_id        =  "ami-08b5b3a93ed654d19"  # Replace with yourI ID
  aws_access_key       = var.aws_access_key
  aws_secret_key       = var.aws_secret_key
  #instance_name = "my-terraform-vm"
}
