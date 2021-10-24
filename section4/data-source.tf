data "aws_ami" "ami" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2*"]
  }
}


resource "aws_instance" "web" {
  ami           = data.aws_ami.ami.id
  instance_type = "t2.micro"

  tags = {
    Name = "data source"
  }
}