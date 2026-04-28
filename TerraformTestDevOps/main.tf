provider "aws" {
  region = var.region
}

module "MyVPC" {
  source = "./modules/vpc"

  vpc_cidr = var.vpc_cidr
  pub_sub  = var.public_subnets
  priv_sub = var.private_subnets
}

module "MyALB" {

  source = "./modules/alb"

  vpc_id  = module.MyVPC.vpc_id
  
  subnets = module.MyVPC.public_subnets
}

module "MyEC2" {

  source = "./modules/ec2"
  vpc_id        = module.MyVPC.vpc_id
  alb_sg        = module.MyALB.alb_sg
  ami           = var.ami
  instance_type = var.instance_type
  private_subnets = module.MyVPC.private_subnets
  tg_arn          = module.MyALB.tg_arn
}