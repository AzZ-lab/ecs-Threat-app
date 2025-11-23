#ecs variables.tf
variable "ecr_uri" {
  description = "URI of the ECR repository with image tag (e.g., 123456789.dkr.ecr.us-east-1.amazonaws.com/my-app:latest)"
  type        = string
   }

variable "iam_role_arn" {
  description = "ARN of the IAM execution role for ECS tasks"
  type        = string
}


#alb variables.tf

variable "vpc_name" {
  description = "Name of the VPC."
  type        = string
}


#acm/dns

variable "domain_name" {
  description = "Domain or subdomain for the certificate (e.g., app.example.com)"
  type        = string
}

variable "hosted_zone_id" {
  description = "Route53 hosted zone ID for your domain"
  type        = string
}


#vpc variables.tf
variable "project_name" {
  description = "project name"
  type = string
}

variable "environment" {
  description = "environment name"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}
