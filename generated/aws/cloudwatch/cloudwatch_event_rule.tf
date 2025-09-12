
resource "aws_cloudwatch_event_rule" "tfer--EventCrawling" {
  event_bus_name      = "default"
  force_destroy       = "false"
 
  name                = "EventCrawling"
  schedule_expression = "cron(0 0 * * ? *)"
  state               = "ENABLED"
}

resource "aws_cloudwatch_event_rule" "tfer--NewsCrawling" {
  event_bus_name      = "default"
  force_destroy       = "false"

  name                = "NewsCrawling"
  schedule_expression = "cron(0 0,3,6,9,12,15,18,21 * * ? *)"
  state               = "ENABLED"
}
