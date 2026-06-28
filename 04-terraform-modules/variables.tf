variable "cidr_block" {
  description = "This is the IP address range for our VPC."
  type        = string
  default     = "192.168.0.0/16"
}


variable "vpc_name" {
  description = "This is the name of our VPC."
  type        = string
  default     = "my-terraform-vpc"
}


variable "region" {
  description = "This is the AWS region where our resources will be created."
  type        = string
  default     = "us-east-1"
}
