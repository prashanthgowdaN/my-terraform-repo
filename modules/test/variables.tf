variable "aws_access_key" {
  description = "AWS access key"
  type        = string
  sensitive   = true
  default     = "AKIAVFIWISPQOBUPFWD4"
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  sensitive   = true
  default     = "SzGZZiXQBj4H1MQnr0f7gW6USccz5Xh0bAzOiUXB"
}

variable "ami_id" {
  description = "AMI ID for EC2 in Dev environment"
  type        = string
  default     = "ami-08b5b3a93ed654d19"
}

variable "instance_type" {
  description = "Instance type for EC2 in Dev environment"
  type        = string
  default     = "t2.micro"
}
