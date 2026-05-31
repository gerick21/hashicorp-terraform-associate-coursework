#Searate the testing repo, might be a good practices when you have different environments. You can also use workspaces for this, but I wanted to show how to create multiple resources in the same configuration file.
resource "github_repository" "testing_repo" {
  name        = "testing-repo"
  description = "This is the testing repository for the Terraform Associate course."
  visibility  = "private"
}
