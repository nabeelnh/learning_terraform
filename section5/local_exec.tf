resource "aws_instance" "dev" {
  ami           =   "ami-0dbec48abfe298cab"
  instance_type =   "t2.micro"
  key_name      =   "nabeel"

    provisioner "local-exec" {
        command = "echo ${self.private_ip} > private_ips.txt"
  }
}