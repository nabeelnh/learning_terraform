# Create an Elastic IP
resource "aws_eip" "eip" {
  vpc      = true
}

# IAM User
resource "aws_iam_user" "iam" {
  name = "loadbalancer"
  path = "/system/"
}