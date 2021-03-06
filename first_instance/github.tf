# Recommended module for terraform version > 3.0
terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.14.0"
    }
  }
}

# Specifying provider
provider "github" {
  token = "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"
}

# Creating a repository
resource "github_repository" "terraform_repo" {
  name        = "terraform_repo"
  description = "Repo generated by terraform"
  
  visibility = "private"
}