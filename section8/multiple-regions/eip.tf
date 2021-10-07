# EIP in default region
resource "aws_eip" "eip" {
  vpc      = true
}

# EIP in belgium
resource "aws_eip" "eip-belgium" {
  provider  = aws.belgium
  vpc       = true
}