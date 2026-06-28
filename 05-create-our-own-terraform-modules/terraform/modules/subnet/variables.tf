variable "vpc_id" {
  description = "The ID of the VPC where the subnet will be created."
  type        = string

}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
  default     = "my-subnet"
}

variable "availability_zone" {
  description = "The availability zone where the subnet will be created."
  type        = string
  default     = "us-east-1a"
}
