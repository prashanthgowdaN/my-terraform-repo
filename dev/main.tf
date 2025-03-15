# Define the EC2 instance
module "EC2_VMs" {
  source = "https://github.com/prashanthgowdaN/my-terraform-repo/blob/main/modules/EC2_VMs"
  ami           = var.ami_id             # AMI ID for your EC2 instance
  instance_type = var.instance_type      # Instance type for your EC2 instance
}

# Attach the NIC to the EC2 instance
network_interface {
   network_interface_id = aws_network_interface.example.id
   device_index         = 0  # Attach to the first network interface
  }

# Attach tags to the instance
  tags = {
    Name = "prashanth"
    Environment = "dev"
  }

# Attach the EBS volume to the instance
  block_device {
    device_name = "/dev/sdh"  # This is the device name in the instance
    volume_size = var.disk_size
    volume_type = "gp2"  # General Purpose SSD (can be changed to io1, st1, etc.)
  }

# Optional: Associate public IP address
  associate_public_ip_address = True
}


# Create a Security Group to allow SSH (port 22)
resource "aws_security_group" "sg" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
