resource "github_repository" "testing_repo" {
  name        = "testing-repo"
  description = "This is the testing repository for the Terraform Associate course."
  private     = true
} 