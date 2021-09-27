# resource "aws_instance" "dev" {
#   ami           =   "ami-0dbec48abfe298cab"
#   instance_type =   "t2.micro"
#   key_name      =   "nabeel"
#   vpc_security_group_ids  = [aws_security_group.allow_ssh.id]

#     provisioner "remote-exec" {
#     inline = [
#         "sudo amazon-linux-extras install -y nginx1.12",
#         "sudo systemctl start nginx"
#     ]

#    connection {
#      type = "ssh"
#      user = "ec2-user"
#      private_key = file("~/.aws/nabeel.pem")
#      host = self.public_ip
#    }
#   }
# }


# # Security Group
# resource "aws_security_group" "allow_ssh" {
#   name        = "allow_ssh"
#   description = "Allow SSH inbound traffic"

#   ingress {
#     description = "SSH into VPC"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["80.5.151.110/32"]
#   }
#   ingress {
#     description = "SSH into VPC"
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["80.5.151.110/32"]
#   }
#   egress {
#     description = "Outbound Allowed"
#     from_port   = 0
#     to_port     = 65535
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }