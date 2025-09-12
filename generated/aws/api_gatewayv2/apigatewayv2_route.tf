# API Gateway v2 Routes - DugOut API 경로 구성
# /api/event/{proxy+} - 이벤트 서비스
resource "aws_apigatewayv2_route" "event_proxy" {
  api_id    = aws_apigatewayv2_api.tfer--42z6qi4fnd_DugOut-API-Gateway.id
  route_key = "ANY /api/event/{proxy+}"
  target    = "integrations/${aws_apigatewayv2_integration.event_integration.id}"
}

# /api/news/{proxy+} - 뉴스 서비스
resource "aws_apigatewayv2_route" "news_proxy" {
  api_id    = aws_apigatewayv2_api.tfer--42z6qi4fnd_DugOut-API-Gateway.id
  route_key = "ANY /api/news/{proxy+}"
  target    = "integrations/${aws_apigatewayv2_integration.news_integration.id}"
}

# /api/user/{proxy+} - 사용자 서비스
resource "aws_apigatewayv2_route" "user_proxy" {
  api_id    = aws_apigatewayv2_api.tfer--42z6qi4fnd_DugOut-API-Gateway.id
  route_key = "ANY /api/user/{proxy+}"
  target    = "integrations/${aws_apigatewayv2_integration.user_integration.id}"
}

# /api/board/{proxy+} - 게시판 서비스
resource "aws_apigatewayv2_route" "board_proxy" {
  api_id    = aws_apigatewayv2_api.tfer--42z6qi4fnd_DugOut-API-Gateway.id
  route_key = "ANY /api/board/{proxy+}"
  target    = "integrations/${aws_apigatewayv2_integration.board_integration.id}"
}

# /api/info/{proxy+} - 정보 서비스 (온프레미스) - Integration이 주석 처리되어 비활성화
# resource "aws_apigatewayv2_route" "info_proxy" {
#   api_id    = aws_apigatewayv2_api.tfer--42z6qi4fnd_DugOut-API-Gateway.id
#   route_key = "ANY /api/info/{proxy+}"
#   target    = "integrations/${aws_apigatewayv2_integration.info_integration.id}"
# }

# /api - 루트 API 경로 - Integration이 주석 처리되어 비활성화
# resource "aws_apigatewayv2_route" "api_root" {
#   api_id    = aws_apigatewayv2_api.tfer--42z6qi4fnd_DugOut-API-Gateway.id
#   route_key = "ANY /api"
#   target    = "integrations/${aws_apigatewayv2_integration.api_root_integration.id}"
# }
