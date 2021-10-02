# Create instance
resource "aws_instance" "web" {
  ami           =   "ami-0dbec48abfe298cab"
  instance_type =   lookup(var.instance_type, terraform.workspace)
}

# lookup(map, key, default)

variable "instance_type" {
    type = map
    default = {
        default =   "t2.nano"
        tst     =   "t2.micro"
        prd     =   "t2.large"
    }
  
}