module "vpc" {
  source = "../../modules/vpc"

  environment = "prod"
  aws_region  = var.aws_region
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_cidr" {
  value = module.vpc.vpc_cidr
}
