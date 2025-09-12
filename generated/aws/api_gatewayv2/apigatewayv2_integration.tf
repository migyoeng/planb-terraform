# API Gateway v2 Integrations - DugOut API 서비스별 통합

# 이벤트 서비스 Integration (ECS 기반)
resource "aws_apigatewayv2_integration" "event_integration" {
  api_id           = aws_apigatewayv2_api.tfer--42z6qi4fnd_DugOut-API-Gateway.id
  integration_type = "HTTP_PROXY"
  
  integration_method = "ANY"
  integration_uri    = "http://${data.aws_lb.alb.dns_name}/api/event"
  
  payload_format_version = "1.0"
}

# 뉴스 서비스 Integration (ECS 기반)
resource "aws_apigatewayv2_integration" "news_integration" {
  api_id           = aws_apigatewayv2_api.tfer--42z6qi4fnd_DugOut-API-Gateway.id
  integration_type = "HTTP_PROXY"
  
  integration_method = "ANY"
  integration_uri    = "http://${data.aws_lb.alb.dns_name}/api/news"
  
  payload_format_version = "1.0"
}

# 사용자 서비스 Integration (ECS 기반)
resource "aws_apigatewayv2_integration" "user_integration" {
  api_id           = aws_apigatewayv2_api.tfer--42z6qi4fnd_DugOut-API-Gateway.id
  integration_type = "HTTP_PROXY"
  
  integration_method = "ANY"
  integration_uri    = "http://${data.aws_lb.alb.dns_name}/api/user"
  
  payload_format_version = "1.0"
}

# 게시판 서비스 Integration (ECS 기반)
resource "aws_apigatewayv2_integration" "board_integration" {
  api_id           = aws_apigatewayv2_api.tfer--42z6qi4fnd_DugOut-API-Gateway.id
  integration_type = "HTTP_PROXY"
  
  integration_method = "ANY"
  integration_uri    = "http://${data.aws_lb.alb.dns_name}/api/board"
  
  payload_format_version = "1.0"
}

# 정보 서비스 Integration (ALB 기반)
resource "aws_apigatewayv2_integration" "info_integration" {
  api_id           = aws_apigatewayv2_api.tfer--42z6qi4fnd_DugOut-API-Gateway.id
  integration_type = "HTTP_PROXY"
  
  integration_method = "ANY"
  integration_uri    = "http://${data.aws_lb.alb.dns_name}/api/info"
  
  payload_format_version = "1.0"
}

# 루트 API Integration (ECS 기반)
resource "aws_apigatewayv2_integration" "api_root_integration" {
  api_id           = aws_apigatewayv2_api.tfer--42z6qi4fnd_DugOut-API-Gateway.id
  integration_type = "HTTP_PROXY"
  
  integration_method = "ANY"
  integration_uri    = "http://${data.aws_lb.alb.dns_name}/api"
  
  payload_format_version = "1.0"
}

# ALB 데이터 소스
data "aws_lb" "alb" {
  name = "DugOut-ALB"
}