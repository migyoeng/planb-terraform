# API Gateway v2 Stage - DugOut API 배포 스테이지
resource "aws_apigatewayv2_stage" "prod" {
  api_id      = aws_apigatewayv2_api.tfer--42z6qi4fnd_DugOut-API-Gateway.id
  name        = "prod"
  auto_deploy = true
  
  default_route_settings {
    detailed_metrics_enabled = true
    throttling_burst_limit   = 5000
    throttling_rate_limit    = 2000
  }
  
  tags = {
    Name = "DugOut-API-Prod"
  }
}
