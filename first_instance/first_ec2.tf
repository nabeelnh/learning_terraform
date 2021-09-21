# AWS Provider version
# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "3.59.0"
#     }
#   }
# }

# Provider and credentials
provider "aws" {
  region        =   "eu-west-2"
}

# Create instance
resource "aws_instance" "web" {
  ami           =   "ami-0dbec48abfe298cab"
  instance_type =   "t2.micro"

  tags = {
    Name = "terraform_first_instance"
  }
}