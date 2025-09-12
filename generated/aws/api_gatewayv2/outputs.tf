# API Gateway v2 기본 정보
output "apigatewayv2_api_id" {
  value = aws_apigatewayv2_api.tfer--42z6qi4fnd_DugOut-API-Gateway.id
}

output "apigatewayv2_api_endpoint" {
  value = aws_apigatewayv2_api.tfer--42z6qi4fnd_DugOut-API-Gateway.api_endpoint
}

# API Gateway v2 Stage 정보
output "apigatewayv2_stage_prod_id" {
  value = aws_apigatewayv2_stage.prod.id
}

output "apigatewayv2_stage_prod_invoke_url" {
  value = aws_apigatewayv2_stage.prod.invoke_url
}

# VPC Link 정보
output "apigatewayv2_vpc_link_info_final_id" {
  value = aws_apigatewayv2_vpc_link.info_final.id
}

# API 경로 정보
output "api_routes" {
  value = {
    event = "/api/event/{proxy+}"
    news  = "/api/news/{proxy+}"
    user  = "/api/user/{proxy+}"
    board = "/api/board/{proxy+}"
    info  = "/api/info/{proxy+}"
    root  = "/api"
  }
}
