module "aws_vpc" {
  source = "./modules/vpc"

  vpc_cidr            = "10.0.0.0/16"
  project_name        = "myproject"
  environment         = "dev"
  public_subnet_count = 2
}

module ""ecs" {
  source = "./modules/ecs"

  ecr_uri                 = var.ecr_uri
  vpc_id                  = module.aws_vpc.vpc_id
  subnet_ids              = module.aws_vpc.public_subnet_ids
  alb_security_group_id   = module.alb.alb_security_group_id
  alb_target_group_arn    = module.alb.alb_target_group_arn
  alb_listener_arn        = module.alb.alb_listener_arn
  desired_count           = 2
  assign_public_ip        = true
  tags                    = {
    Project     = "myproject"
    Environment = "dev"
  }

}
