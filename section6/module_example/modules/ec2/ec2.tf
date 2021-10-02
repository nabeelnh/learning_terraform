# # Create instance
# resource "aws_instance" "web" {
#   ami           =   var.image_ami
#   instance_type =   var.instance_type["micro"]
# }

# Create instance
resource "aws_instance" "web" {
  # Make ami static so the same image is used
  ami           =   "ami-0dbec48abfe298cab"

  # Make instance type dynamic so it can be user specified
  instance_type =   var.instance_type
}