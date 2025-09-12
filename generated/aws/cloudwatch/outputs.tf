
output "aws_cloudwatch_event_rule_tfer--EventCrawling_id" {
  value = "${aws_cloudwatch_event_rule.tfer--EventCrawling.id}"
}

output "aws_cloudwatch_event_rule_tfer--NewsCrawling_id" {
  value = "${aws_cloudwatch_event_rule.tfer--NewsCrawling.id}"
}


output "aws_cloudwatch_event_target_tfer--EventCrawling-002F-event-service_id" {
  value = "${aws_cloudwatch_event_target.tfer--EventCrawling-002F-event-service.id}"
}

output "aws_cloudwatch_event_target_tfer--NewsCrawling-002F-news-service_id" {
  value = "${aws_cloudwatch_event_target.tfer--NewsCrawling-002F-news-service.id}"
}
