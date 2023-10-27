resource "aws_sns_topic" "user_updates" {
  name = var.sns_topic_name
}

data "aws_sns_topic" "example" {
  name = var.sns_topic_name
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  topic_arn = data.aws_sns_topic.example.arn
  protocol  = var.sns_topic_subscription_protocol
  endpoint  = var.sns_topic_subscription_endpoint
}

output "sns_topic_arn" {
  value = aws_sns_topic.user_updates.arn
}
