resource "aws_instance" "Template" {
  ami = "ami-08b5b3a93ed654d19" 
  instance_type  = "t2.micro"
  tags = {
     Name = var.instance_name
  }
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.Template.id
}

output "public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.Template.public_ip
}
