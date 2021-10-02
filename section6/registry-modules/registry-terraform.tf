module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0dbec48abfe298cab"
  instance_type          = "t2.micro"
  key_name               = "nabeel"
  subnet_id              = "subnet-b7f9dade"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}