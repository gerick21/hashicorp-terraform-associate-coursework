variable "vpc_id" {
  description = "The ID of the VPC where the EC2 instance will be launched."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the EC2 instance will be launched."
  type        = string
}

variable "instance_type" {
  description = "The type of the EC2 instance."
  type        = string
}

variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance."
  type        = string
  default     = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (HVM), SSD Volume Type
}

variable "instance_name" {
  description = "The name of the EC2 instance."
  type        = string
  default     = "my-terraform-instance"
}
