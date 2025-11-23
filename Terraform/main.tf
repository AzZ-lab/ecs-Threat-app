module "aws_vpc" {
  source = "./modules/vpc"

  vpc_cidr            = var.vpc_cidr
  project_name        = var.project_name
  environment         = var.environment
  public_subnet_count = 2
}

module "acm" {
  source         = "./modules/acm"
  domain_name    = var.domain_name
  hosted_zone_id = var.hosted_zone_id
  alb_dns_name    = module.alb.alb_dns_name
  alb_zone_id     = module.alb.alb_zone_id
}

module "alb" {
  source              = "./modules/alb"
  vpc_id              = module.aws_vpc.vpc_id
  vpc_name            = module.aws_vpc.vpc_name
  subnet_ids          = module.aws_vpc.public_subnet_ids
  acm_certificate_arn = module.acm.certificate_arn
}

module "ecs" {
  source = "./modules/ecs"

  ecr_uri               = var.ecr_uri
  vpc_id                = module.aws_vpc.vpc_id
  subnet_ids            = module.aws_vpc.public_subnet_ids
  alb_security_group_id = module.alb.alb_security_group_id
  alb_target_group_arn  = module.alb.alb_target_group_arn
  alb_listener_arn      = module.alb.alb_listener_arn
  iam_role_arn          = var.iam_role_arn
  task_role_arn         = var.iam_role_arn

  depends_on = [module.alb]
}
