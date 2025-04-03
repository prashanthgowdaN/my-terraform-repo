variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  sensitive   = true 
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  sensitive   = true 
}

variable "instance_name" {
  description = "Name for the EC2 instance"
  type        = string
  sensitive   = true 
}

/*variable "aws_access_key" {
  description = "AWS Access Key ID"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS Secret Access Key"
  type        = string
  sensitive   = true
}

variable "aws_region" {
  description = "AWS Region"
  type        = string 
  sensitive   = true 
}

variable "aws_instance_type" {
  description = "AWS Instance Type"
  type        = string 
  sensitive   = true 
}

variable "aws_ami_id" {
  description = "AWS Image type"
  type        = string 
  sensitive   = true 
}*/
