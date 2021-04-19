output "event_id" {
  value = aws_cloudwatch_event_rule.main.id
}

output "event_arn" {
  value = aws_cloudwatch_event_rule.main.arn
}