# New map variables for for_each
variable "subnet_config" {
  description = "Map of subnet configurations"
  type        = map(string)
  default = {
    "public"   = "10.0.10.0/24"
    "private1" = "10.0.20.0/24"
    "private2" = "10.0.30.0/24"
  }
}

variable "subnet_azs" {
  description = "Map of subnet availability zones"
  type        = map(string)
  default = {
    "public"   = "us-east-1a"
    "private1" = "us-east-1b"
    "private2" = "us-east-1c"
  }
}

variable "security_group_config" {
  description = "Map of security group ports"
  type        = map(number)
  default = {
    "web" = 80
    "app" = 8080
    "db"  = 3306
  }
}


variable "subnet_cidr_blocks" {
  description = "Lista de CIDR blocks para las subnets creadas con count"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "availability_zones" {
  description = "Lista de AZs para las subnets creadas con count"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}


variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}
