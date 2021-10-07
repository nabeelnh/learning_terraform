locals {
  db_password = {
      admin =   "password"
  }
}

output "dbpassword" {
  value     =   local.db_password
  sensitive =   true
}