variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
  default = "ecs-threat"
}

variable "ecs_cpu" {
  description = "CPU units for the ECS task (256, 512, 1024, 2048, 4096)"
  type        = number
  default     = 256
}

variable "ecs_memory" {
  description = "Memory for the ECS task in MB (512, 1024, 2048, 4096, 8192, etc.)"
  type        = number
  default     = 512
}

variable "iam_role_arn" {
  description = "ARN of the IAM execution role for ECS tasks"
  type        = string
}

variable "ecr_uri" {
  description = "URI of the ECR repository with image tag (e.g., 123456789.dkr.ecr.us-east-1.amazonaws.com/my-app:latest)"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC where ECS will run"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for ECS tasks"
  type        = list(string)
}

variable "alb_security_group_id" {
  description = "Security group ID of the Application Load Balancer"
  type        = string
}

variable "alb_target_group_arn" {
  description = "ARN of the ALB target group"
  type        = string
}

variable "alb_listener_arn" {
  description = "ARN of the ALB listener (for depends_on)"
  type        = string
}

variable "http" {
  description = "HTTP port number"
  type        = number
  default     = 80
}

variable "https" {
  description = "HTTPS port number"
  type        = number
  default     = 443
}

variable "protocol" {
  description = "Protocol for security group rules"
  type        = string
  default     = "tcp"
}

variable "desired_count" {
  description = "Desired number of ECS tasks to run"
  type        = number
  default     = 1
}

variable "assign_public_ip" {
  description = "Assign public IP to ECS tasks (required if using public subnets without NAT)"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}

variable "task_role_arn" {
  description = "ARN of the IAM role that the ECS task can assume"
  type        = string
}
