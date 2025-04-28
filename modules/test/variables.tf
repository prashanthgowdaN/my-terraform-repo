variable "aws_access_key" {
  description = "AWS access key"
  type        = string
  sensitive   = true
  default     = "AKIAVFIWISPQNDBISYW5"
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  sensitive   = true
  default     = "37b58HWomG8Bda6bZ7eTzqVMOyU15kpAk7KJf1qv"
}

variable "ami_id" {
  description = "AMI ID for EC2 in Dev environment"
  type        = string
  default     = "ami-0e449927258d45bc4"
}

variable "instance_type" {
  description = "Instance type for EC2 in Dev environment"
  type        = string
  default     = "t2.micro"
}
