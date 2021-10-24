# locals {
#   common_tags = {
#     "Owner" = "Nabeel"
#     "Project" = "Learning"
#   }
# }

# resource "aws_instance" "tags" {
#   count         = 2
#   ami           = lookup(var.ami, var.region, "london")
#   instance_type = "t2.micro"
#   tags = local.common_tags
# }



# variable "region" {
#   type  =   string
#   default = "london"
# }

# variable "ami" {
#   type  = map
#   default = {
#       "london" = "ami-02f5781cba46a5e8a"
#       "ireland" = "ami-05cd35b907b4ffe77"
#   }
# }