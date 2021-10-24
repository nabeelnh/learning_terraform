# variable "region" {
#   type = string
#   default = "eu-west-2"
# }

# variable "ami" {
#   type = map
#   default = {
#     eu-west-1 = "ami-05cd35b907b4ffe77"
#     eu-west-2 = "ami-02f5781cba46a5e8a"
#   }
# }

# variable "tags" {
#   type = list
#   default = ["First-instance", "Second-instance"]
# }

# resource "tls_private_key" "key-pair" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

# resource "aws_key_pair" "deployer" {
#   key_name   = "deployer-key"
#   public_key = tls_private_key.key-pair.public_key_openssh
# }

# resource "aws_instance" "web" {
#   count         = 2
#   ami           = lookup(var.ami, var.region)
#   instance_type = "t2.micro"

#   tags = {
#     Name = element(var.tags, count.index)
#   }
# }


# locals {
#   time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
# }

# output "time_stamp" {
#   value = local.time
# }