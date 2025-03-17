/*variable "aws_access_key" {
  description = "The AWS access key"
  type        = string
}

variable "aws_secret_key" {
  description = "The AWS secret access key"
  type        = string
}*/

variable "aws_region" {
  description = "The AWS region to launch the VM"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro"  # Default instance type
}

variable "key_name" {
  description = "The SSH key name for accessing the instance"
  type        = string
}

variable "instance_name" {
  description = "The name of the instance"
  type        = string
  default     = "my-terraform-vm"
}
