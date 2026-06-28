module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.cidr_block
  vpc_name = var.vpc_name
}


module "subnet_module" {
  source            = "./modules/subnet"
  vpc_id            = module.vpc.vpc_id
  subnet_cidr       = "10.0.1.0/24"
  subnet_name       = "my-terraform-subnet"
  availability_zone = "us-east-1a"
}


