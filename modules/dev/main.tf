# Define the EC2 instance
/* module "EC2_VMs" {
 # source = "github.com/prashanthgowdaN/my-terraform-repo//modules/main.tf"
  #ami           = var.ami_id             # AMI ID for your EC2 instance
  #instance_type = var.instance_type      # Instance type for your EC2 instance
}*/

resource "aws_instance" "vm" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = data.aws_subnet_ids.default_subnet.ids[0]  # Use the default subnet ID
  vpc_security_group_ids = [data.aws_security_group.default_sg.id]  # Use the default security group
  
tags = {
    Name = var.instance_name
    Environment = "dev"
    TestENV     = "Destroy"
  }
}

# Attach the NIC to the EC2 instance
resource "aws_network_interface" "my_nic" {
  subnet_id = "subnet-0e67770a39a2f9715"
  security_groups = sg-0ad357215786f8d79  #[data.aws_security_group.default_sg.id]  # Attach to the default security group

  attachment {
    instance     = aws_instance.vm.id
    device_index = 0  # Primary NIC (0)
  }
}

/*network_interface {
   network_interface_id = aws_network_interface.additional.id
   device_index         = 1  # Attach to the first network interface
  }*/

# Attach the EBS volume to the instance
  block_device {
    device_name = "/dev/sdh"  # This is the device name in the instance
    volume_size = 5
    volume_type = "gp2"  # General Purpose SSD (can be changed to io1, st1, etc.)
    delete_on_termination = true
 }

# Optional: Associate public IP address
  #associate_public_ip_address = flase

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

# Data sources to retrieve default VPC, subnet, and security group
data "aws_vpc" "default" {
  default = true
}

data "aws_subnet_ids" "default_subnet" {
  vpc_id = data.aws_vpc.default.id
}

data "aws_security_group" "default_sg" {
  name = "default"  # Default security group
}
