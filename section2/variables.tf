variable "allow_ip" {
  default = "80.5.151.110/32"
  type    = string
}

variable "image_ami" {
  default = "ami-0dbec48abfe298cab"
  type    = string
}

variable "instance_type" {
  type = map(any)
}