# variable "users" {
#     type    = list
#     default = ["nabeel", "samiha", "seif"]
# }

# # resource "aws_iam_user" "count-users" {
# #   count = 4
# #   name = "loadbalancer-${count.index}"
# #   path = "/system/"
# # }


# resource "aws_iam_user" "set-users" {
#   name = var.users[count.index]
#   count = 3
#   path = "/system/"
# }