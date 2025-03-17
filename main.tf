provider "aws" {
  region = "us-east-1"  # Choose your region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
module "prashanth_test_VM" {
  source = ".//modules/dev"
}
