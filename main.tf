provider "aws" {
  access_key       = var.aws_access_key
  secret_key       = var.aws_secret_key
  region           = var.aws_region
}
# main.tf (root directory)

module "EC2_VM" {
  source        = "./modules/EC2_Instance"  # Path to the module directory
  aws_region    = "us-east-1"
  instance_type = "t2.micro"
  ami_id        = "ami-08b5b3a93ed654d19"  # Replace with your AMI ID
  #instance_name = "my-terraform-vm"
}

