terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.31.0"
    }
  }

  required_version = "1.12.2"
}

provider "aws" {
  region = "us-east-2"
}
