variable "image_ami" {
  type        = string
  description = "This is the server EC2 image id"
  default     = "ami-0dbec48abfe298cab"
}

variable "db_username" {
  type        = string
  description = "Database username"
  default     = "username"
}

variable "db_password" {
  type        = string
  description = "Database password"
  default     = "password"
}