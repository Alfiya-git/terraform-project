module "waf" {
  source     = "./modules/waf"
  region     = var.region
  aws_lb_arn = var.aws_lb_arn
} 

module "efs" {
    source   = "./modules/efs"
}

module "my_sns_module" {
  source = "/home/neosoft/terraform-aws-WAFv2/modules/sns"  # Use the correct path to your module
  sns_topic_name                 = "test-2"
  sns_topic_subscription_protocol = "email"
  sns_topic_subscription_endpoint = "alfiya.zabir@neosoft.com"
}




