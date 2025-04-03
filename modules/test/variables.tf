variable "aws_access_key" {
  description = "AWS access key"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  sensitive   = true
}

variable "ami_id" {
  description = "AMI ID for EC2 in Dev environment"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2 in Dev environment"
  type        = string
}
