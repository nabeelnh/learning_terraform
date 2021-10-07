terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Default (london) provider
provider "aws" {
  region = "eu-west-2"
}

# Belgium provider
provider "aws" {
  alias     = "belgium"
  region    = "eu-west-2"
  profile   = "default"
}
