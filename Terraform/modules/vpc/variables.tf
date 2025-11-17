variable "project_name" {
  description = "ECS-threat-detection"
  type        = string
}

variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_count" {
  description = "Number of public subnets to create"
  type        = number
  default     = 2
  validation {
    condition     = var.public_subnet_count >= 2
    error_message = "At least 2 public subnets are required for ALB"
  }
}
