output "alb" {
  description = "The Application Load Balancer"
  value       = aws_lb.app_alb
}

output "dns" {
  description = "The DNS name of the Application Load Balancer"
  value       = aws_lb.app_alb.dns_name
}

output "domain_name" {
  description = "The domain name associated with the ACM certificate"
  value       = module.acm.domain_name
}
