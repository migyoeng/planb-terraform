resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-rds-002F-instance-002F-user-service-db-002F-error" {
  log_group_class = "STANDARD"
  name            = "/aws/rds/instance/user-service-db/error"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-User-Inspect-Task" {
  log_group_class = "STANDARD"
  name            = "/ecs/User-Inspect-Task"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-board-task-migrate" {
  log_group_class = "STANDARD"
  name            = "/ecs/board-task-migrate"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-board-task-web" {
  log_group_class = "STANDARD"
  name            = "/ecs/board-task-web"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-event-task-crawl" {
  log_group_class = "STANDARD"
  name            = "/ecs/event-task-crawl"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-event-task-migrate" {
  log_group_class = "STANDARD"
  name            = "/ecs/event-task-migrate"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-event-task-web" {
  log_group_class = "STANDARD"
  name            = "/ecs/event-task-web"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-info-tesk" {
  log_group_class = "STANDARD"
  name            = "/ecs/info-tesk"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-mysql-login-check" {
  log_group_class = "STANDARD"
  name            = "/ecs/mysql-login-check"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-news-service-web" {
  log_group_class = "STANDARD"
  name            = "/ecs/news-service-web"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-news-task-crawl" {
  log_group_class = "STANDARD"
  name            = "/ecs/news-task-crawl"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-news-task-migrate" {
  log_group_class = "STANDARD"
  name            = "/ecs/news-task-migrate"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-test-news-task-crawl" {
  log_group_class = "STANDARD"
  name            = "/ecs/test-news-task-crawl"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-test-news-task-migrate" {
  log_group_class = "STANDARD"
  name            = "/ecs/test-news-task-migrate"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-test-news-task-web" {
  log_group_class = "STANDARD"
  name            = "/ecs/test-news-task-web"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-toolbox" {
  log_group_class = "STANDARD"
  name            = "/ecs/toolbox"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-user-task-migrate" {
  log_group_class = "STANDARD"
  name            = "/ecs/user-task-migrate"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-user-task-web" {
  log_group_class = "STANDARD"
  name            = "/ecs/user-task-web"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer--RDSOSMetrics" {
  log_group_class   = "STANDARD"
  name              = "RDSOSMetrics"
  region            = "ap-northeast-2"
  retention_in_days = "30"
  skip_destroy      = "false"
}

resource "aws_cloudwatch_log_group" "tfer--onprem-002F-db-002F-mysql-error" {
  log_group_class = "STANDARD"
  name            = "onprem/db/mysql-error"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer--onprem-002F-db-002F-mysql-slow" {
  log_group_class = "STANDARD"
  name            = "onprem/db/mysql-slow"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer--onprem-002F-system-002F-cloud-init" {
  log_group_class = "STANDARD"
  name            = "onprem/system/cloud-init"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer--onprem-002F-system-002F-messages" {
  log_group_class = "STANDARD"
  name            = "onprem/system/messages"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer--onprem-002F-system-002F-secure" {
  log_group_class = "STANDARD"
  name            = "onprem/system/secure"
  skip_destroy    = "false"
}
