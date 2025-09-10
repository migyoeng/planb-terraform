resource "aws_cloudwatch_dashboard" "tfer--onprem-server-system" {
  dashboard_body = "{\"widgets\":[]}"
  dashboard_name = "onprem-server-system"
  region         = "ap-northeast-2"
}
