# Storing terraform.tfstate file

terraform {
  backend "s3" {
    bucket = "nabeelhamad-bucket"
    key    = "demo-statefile"
    region = "eu-west-2"
    dynamodb_table = "state-lock"
  }
}
