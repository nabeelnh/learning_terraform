variable "region" {
  type = string
  default = "eu-west-2"
}

variable "ami" {
  type = map
  default = {
    eu-west-1 = "ami-05cd35b907b4ffe77"
    eu-west-2 = "ami-02f5781cba46a5e8a"
  }
}

variable "tags" {
  type = list
  default = ["First-instance", "Second-instance"]
}

resource "aws_instance" "web" {
  count         = 2
  ami           = lookup(var.ami, var.region)
  instance_type = "t2.micro"

  tags = {
    Name = element(var.tags, count.index)
  }
}
