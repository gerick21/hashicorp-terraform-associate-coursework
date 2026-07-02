terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.31.0"
    }
  }

  required_version = "1.12.2"

  cloud {

    organization = "gerick-hcp"

    workspaces {
      name = "hcp-demo"
    }

  }
}

provider "aws" {
  region = "us-east-2"
}
