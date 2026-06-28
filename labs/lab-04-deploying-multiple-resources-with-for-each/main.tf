# Main VPC
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "main-vpc"
  }
}

# Subnets created with count (for comparison)
resource "aws_subnet" "subnet_count" {
  count             = 3
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidr_blocks[count.index]
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "subnet-count-${count.index + 1}"
    Tier = count.index < 1 ? "public" : "private"
  }
}

# Subnets created with for_each
resource "aws_subnet" "subnet_foreach" {
  for_each          = var.subnet_config
  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value
  availability_zone = var.subnet_azs[each.key]

  tags = {
    Name = "subnet-${each.key}"
    Tier = "standard"
  }
}


