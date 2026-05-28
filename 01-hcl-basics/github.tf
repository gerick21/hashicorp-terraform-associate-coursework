provider "github" {
  token = var.github_token
}

resource "github_repository" "production_repo" {
  name        = "production-repo"
  description = "This is the production repository for the Terraform Associate course."
  private     = true
}


