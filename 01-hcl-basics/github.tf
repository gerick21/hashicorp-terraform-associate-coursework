#Declaring the provider and resource. The provider block is where you configure the provider, in this case, the GitHub provider. The resource block is where you define the resources you want to create, in this case, a GitHub repository.
provider "github" {
  token = var.github_token
}

#Declaring the resource for the GitHub repository. The name of the resource is "github_repository" and the name of the instance is "production_repo". The name of the repository is "production-repo", and it has a description and is set to private.
resource "github_repository" "production_repo" {
  name        = "production-repo"
  description = "This is the production repository for the Terraform Associate course."
  private     = true
}


