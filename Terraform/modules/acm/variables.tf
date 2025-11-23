variable "domain_name" {
  description = "The main domain name (e.g., example.com)"
  type        = string
}

variable "subdomain" {
  description = "The subdomain to point to the ALB (e.g., tm)"
  type        = string
  default     = "tm"
}

variable "hosted_zone_id" {
  description = "Route53 hosted zone ID for your domain"
  type        = string
}

variable "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  type        = string
}

variable "alb_zone_id" {
  description = "Zone ID of the Application Load Balancer"
  type        = string
}
