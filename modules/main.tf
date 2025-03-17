resource "aws_instance" "TestVM01" {
  ami           = "ami-08b5b3a93ed654d19"
  instance_type = "t2.micro"

  tags = {
    Name = prashanth
    env  = stg
    type = Destroy
  }
}
