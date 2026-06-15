# Create the primary VPC for workloads
resource "aws_vpc" "main" {
  cidr_block           = "192.168.0.0/16" # <-- change IP Address
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "terraform-course"
    Environment = "Learning Terraform"
    Managed_By  = "Terraform"
  }
}
