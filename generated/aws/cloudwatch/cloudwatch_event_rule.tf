resource "aws_cloudwatch_event_rule" "tfer--AutoScalingManagedRule" {
  description    = "This rule is used to route Instance notifications to EC2 Auto Scaling"
  event_bus_name = "default"
  event_pattern  = "{\"detail-type\":[\"EC2 Instance Rebalance Recommendation\",\"EC2 Spot Instance Interruption Warning\"],\"source\":[\"aws.ec2\"]}"
  force_destroy  = "false"

  name           = "AutoScalingManagedRule"
  region         = "ap-northeast-2"
  state          = "ENABLED"
}

resource "aws_cloudwatch_event_rule" "tfer--EventCrawling" {
  event_bus_name      = "default"
  force_destroy       = "false"
 
  name                = "EventCrawling"
  region              = "ap-northeast-2"
  schedule_expression = "cron(0 0 * * ? *)"
  state               = "ENABLED"
}

resource "aws_cloudwatch_event_rule" "tfer--NewsCrawling" {
  event_bus_name      = "default"
  force_destroy       = "false"

  name                = "NewsCrawling"
  region              = "ap-northeast-2"
  schedule_expression = "cron(0 0,3,6,9,12,15,18,21 * * ? *)"
  state               = "ENABLED"
}
