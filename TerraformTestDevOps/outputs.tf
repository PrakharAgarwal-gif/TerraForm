output "alb_dns_name" {
  value = module.MyALB.alb_dns
}

output "vpc_id" {
  value = module.MyVPC.vpc_id
}

output "PublicSubnetIDs" {
  value = [module.MyVPC.public_subnets]
}
output "PrivateSubnetIDs" {
  value = [module.MyVPC.private_subnets]
}