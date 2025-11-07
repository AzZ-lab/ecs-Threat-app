terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}


provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-ecs-bucket"
  object_lock_enabled = true

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
