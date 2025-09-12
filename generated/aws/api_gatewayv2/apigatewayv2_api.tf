# CloudFront Distribution 데이터 소스
data "terraform_remote_state" "cloudfront" {
  backend = "local"
  config = {
    path = "../cloudfront/terraform.tfstate"
  }
}

resource "aws_apigatewayv2_api" "tfer--42z6qi4fnd_DugOut-API-Gateway" {
  api_key_selection_expression = "$request.header.x-api-key"

  cors_configuration {
    allow_credentials = "true"
    allow_headers     = ["authorization", "content-type", "x-requested-with"]
    allow_methods     = ["DELETE", "GET", "OPTIONS", "PATCH", "POST", "PUT"]
    allow_origins     = ["https://${data.terraform_remote_state.cloudfront.outputs.aws_cloudfront_distribution_tfer--E1NQOA9YMS3RQ6_domain_name}"]
    expose_headers    = ["content-disposition", "content-length", "content-type"]
    max_age           = "86400"
  }

  disable_execute_api_endpoint = "false"
  ip_address_type              = "ipv4"
  name                         = "DugOut-API-Gateway"
  protocol_type                = "HTTP"
  route_selection_expression   = "$request.method $request.path"
}
