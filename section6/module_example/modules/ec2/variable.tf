# Instance type
# variable "instance_type" {
#     type  =   map

#     default = {
#         micro = "t2.micro"
#         nano = "t2.nano"
#     }
# }

variable "instance_type" {
    type    =   string
    default = "t2.micro"
  
}