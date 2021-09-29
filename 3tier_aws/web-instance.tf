#Create EC2 Instance
resource "aws_instance" "webserver1" {
  ami                    = var.image_ami
  instance_type          = "t2.micro"
  availability_zone      = "eu-west-2a"
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.web-subnet-1.id
  user_data              = file("install_apache.sh")

  tags = {
    Name = "Web Server az-a"
  }

}

resource "aws_instance" "webserver2" {
  ami                    = var.image_ami
  instance_type          = "t2.micro"
  availability_zone      = "eu-west-2b"
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.web-subnet-2.id
  user_data              = file("install_apache.sh")

  tags = {
    Name = "Web Server az-b"
  }

}