module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.cidr_block
  vpc_name = var.vpc_name
}
