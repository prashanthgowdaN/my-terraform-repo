variable "aws_access_key" {
  description = "AWS access key"
  type        = string
  sensitive   = true
  default     = "AKIAVFIWISPQJ5DL3KIS"
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  sensitive   = true
  default     = "1WtQghusyUcggzYImXAou9oiTo112hO9yVgaUr3I"
}

variable "ami_id" {
  description = "AMI ID for EC2 in Dev environment"
  type        = string
  default     = "ami-060a84cbcb5c14844"
}

variable "instance_type" {
  description = "Instance type for EC2 in Dev environment"
  type        = string
  default     = "t2.micro"
}
