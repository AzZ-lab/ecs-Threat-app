terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket = "ecs-backend-az"
    key    = "ecs-backend-az/terraform.tfstate"
    region = "eu-west-2"
    encrypt = true
    use_lockfile = true
  }
}

provider "aws" {
  region = "eu-west-2"
}
