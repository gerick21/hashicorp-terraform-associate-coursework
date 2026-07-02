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

module "prod-workload" {
  source        = "./modules/ec2"
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.subnet_module.subnet_id
  ami_id        = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  instance_name = "my-terraform-instance"
}
