resource "aws_cloudwatch_event_target" "tfer--AutoScalingManagedRule-002F-autoscaling" {
  arn           = "arn:aws:autoscaling:ap-northeast-2:::"
  force_destroy = "false"
  region        = "ap-northeast-2"
  rule          = "AutoScalingManagedRule"
  target_id     = "autoscaling"
}

resource "aws_cloudwatch_event_target" "tfer--EventCrawling-002F-event-service" {
  arn = "arn:aws:ecs:ap-northeast-2:726629337826:cluster/DUGOUT-CLUSTER"

  ecs_target {
    enable_ecs_managed_tags = "false"
    enable_execute_command  = "false"
    launch_type             = "FARGATE"

    network_configuration {
      assign_public_ip = "true"
      security_groups  = ["sg-0dd82609d8f080a0f"]
      subnets          = ["subnet-00258c4a6ac72c4ce", "subnet-0e08b5b05fdad2efc"]
    }

    platform_version    = "LATEST"
    task_count          = "1"
    task_definition_arn = "arn:aws:ecs:ap-northeast-2:726629337826:task-definition/Event-Crawl-Task:1"
  }

  force_destroy = "false"
  input         = "{\n    \"taskRoleArn\": \"arn:aws:iam::726629337826:role/DugoutTaskExecutionRole\"\n}"
  region        = "ap-northeast-2"
  role_arn      = "arn:aws:iam::726629337826:role/ecsEventsRole"
  rule          = "EventCrawling"
  target_id     = "event-service"
}

resource "aws_cloudwatch_event_target" "tfer--NewsCrawling-002F-news-service" {
  arn = "arn:aws:ecs:ap-northeast-2:726629337826:cluster/DUGOUT-CLUSTER"

  ecs_target {
    enable_ecs_managed_tags = "false"
    enable_execute_command  = "false"
    launch_type             = "FARGATE"

    network_configuration {
      assign_public_ip = "true"
      security_groups  = ["sg-0dd82609d8f080a0f"]
      subnets          = ["subnet-00258c4a6ac72c4ce", "subnet-0e08b5b05fdad2efc"]
    }

    platform_version    = "LATEST"
    task_count          = "1"
    task_definition_arn = "arn:aws:ecs:ap-northeast-2:726629337826:task-definition/News-Crawl-Task:1"
  }

  force_destroy = "false"
  input         = "{}"
  region        = "ap-northeast-2"
  role_arn      = "arn:aws:iam::726629337826:role/ecsEventsRole"
  rule          = "NewsCrawling"
  target_id     = "news-service"
}
