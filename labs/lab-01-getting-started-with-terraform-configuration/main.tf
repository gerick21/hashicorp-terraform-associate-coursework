resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr # <-- update value here
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "terraform-course"
    Environment = var.environment # <-- update value here
  }
}
