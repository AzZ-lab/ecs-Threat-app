module "aws_vpc" {
  source = "./modules/vpc"

  vpc_cidr            = "10.0.0.0/16"
  project_name        = "myproject"
  environment         = "dev"
  public_subnet_count = 2
}

module "ecs"{
  source = "./modules/ecs"
  ecs_cluster_name       = "my-ecs-cluster"
  }

}
