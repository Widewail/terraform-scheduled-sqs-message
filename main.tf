resource "aws_cloudwatch_event_rule" "main" {
  name                = var.name
  schedule_expression = var.schedule

  tags = var.tags
}

resource "aws_cloudwatch_event_target" "main" {
  rule  = aws_cloudwatch_event_rule.main.id
  arn   = var.queue_arn
  input = var.input

  sqs_target {
    message_group_id = var.name
  }
}

//TODO: optionally create the queue if not specified?