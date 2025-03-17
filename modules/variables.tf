variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "vm_names" {
  type    = list(string)
  default = ["web-server", "db-server"]  # We can use the Host Name and its only for single Image 
}
