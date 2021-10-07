variable "project" {
  description = "name of the project"
  type = string
  default = "wordpress"
}

variable "region" {
  description = "region of the build"
  default = "eu-west-2"
  type    = string
}

variable "env" {
  description = "Environment of the build"
  type = string
  default = "tst"
}

# RDS
variable "rds_allocated_storage" {
  default = "5"
  type    = string
}

variable "rds_backup_retention_period" {
  default = "7"
  type    = string
}

variable "database_name" {
  description = "Name of the database"
  type = string
  default = "dbname"
}

variable "database_master_username" {
  description = "Username of the database master"
  type = string
  default = "dbmaster"
}

variable "db_instance_type" {
  default = "db.t2.micro"
  type    = string
}

variable "image_ami" {
  type        = string
  description = "This is the server EC2 image id"
  default     = "ami-0dbec48abfe298cab"
}
