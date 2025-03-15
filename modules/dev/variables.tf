variable "aws_access_key" {
  description = "The AWS access key"
  type        = string
}

variable "aws_secret_key" {
  description = "The AWS secret access key"
  type        = string
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

variable "vpc_id" {
  description = "VPC ID where the instance will be created"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID where the EC2 instance will be placed"
  type        = string
}

variable "disk_size" {
  description = "Size of the EBS disk to be attached (in GB)"
  type        = number
  default     = 10  # Default disk size in GB
}
