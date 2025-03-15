output "instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.example.public_ip
}

output "instance_id" {
  description = "The instance ID"
  value       = aws_instance.example.id
}

output "disk_id" {
  description = "The ID of the attached EBS volume"
  value       = aws_instance.example.block_device[0].volume_id
}

output "nic_id" {
  description = "The ID of the attached NIC"
  value       = aws_network_interface.example.id
}
