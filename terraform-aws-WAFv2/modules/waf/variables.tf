variable "region" {
  description = "AWS Deployment region."
  default     = "us-east-2"
}

variable "aws_lb_arn" {
  description = "ARN of the AWS Application Load Balancer."
  #default     = "arn:aws:elasticloadbalancing:us-east-2:475618089518:loadbalancer/app/TestingServer-LB/2d2765eb341cd114"
}
