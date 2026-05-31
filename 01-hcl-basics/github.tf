#Declaring the provider and resource. The provider block is where you configure the provider, in this case, the GitHub provider. The resource block is where you define the resources you want to create, in this case, a GitHub repository.
variable "github_token" {
  type        = string
  description = "The github token used to authenticate with the GitHub API. It should have permissions to create repositories."
  #This will avoid showing the token in the terminal when you run terraform plan or apply
  sensitive = true
}

# Provider configuration
provider "github" {
  token = var.github_token
}

#Declaring the resource for the GitHub repository. The name of the resource is "github_repository" and the name of the instance is "production_repo". The name of the repository is "production-repo", and it has a description and is set to private.
resource "github_repository" "production_repo" {
  name        = "production-repo"
  description = "This is the production repository for the Terraform Associate course."
  visibility  = "private"
}
