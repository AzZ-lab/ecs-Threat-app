variable "lb_type" {
  description = "Type of the load balancer."
  type        = string
  default = "application"
}

variable "ssl_policy" {
  description = "SSL policy for the ALB listener."
  type        = string
  default = "ELBSecurityPolicy-2016-08"
}

variable "vpc_name" {
  description = "Name of the VPC."
  type        = string
}

variable "http_port" {
  description = "HTTP port for the ALB."
  type        = number
  default = 80
}

variable "https_port" {
  description = "HTTPS port for the ALB."
  type        = number
  default = 443
}

variable "http_protocol" {
  description = "HTTP protocol for the ALB."
  type        = string
  default     = "HTTP"
}

variable "https_protocol" {
  description = "HTTPS protocol for the ALB."
  type        = string
  default = "HTTPS"
}

variable "tcp" {
  description = "TCP protocol for the ALB security group."
  type        = string
  default = "tcp"
}

variable "allow_cidr" {
  description = "CIDR blocks allowed for ALB security group."
  type        = list(string)
  default = [ "0.0.0.0/0" ]
}

variable "target_type" {
  description = "Target type for the ALB target group."
  type        = string
  default = "ip"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for ALB"
  type        = list(string)
}

variable "acm_certificate_arn" {
  description = "The ARN of the ACM certificate for HTTPS listener"
  type        = string
}
