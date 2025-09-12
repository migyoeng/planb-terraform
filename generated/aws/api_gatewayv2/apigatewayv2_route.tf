resource "aws_apigatewayv2_route" "tfer--5ue5l0n" {
  api_id             = "42z6qi4fnd"
  api_key_required   = "false"
  authorization_type = "NONE"
  route_key          = "ANY /api/event/{proxy+}"
  target             = "integrations/wccpmsq"
}

resource "aws_apigatewayv2_route" "tfer--9s6dloq" {
  api_id             = "42z6qi4fnd"
  api_key_required   = "false"
  authorization_type = "NONE"
  route_key          = "ANY /api/user/{proxy+}"
  target             = "integrations/jt47rzk"
}

resource "aws_apigatewayv2_route" "tfer--a09ra6d" {
  api_id             = "42z6qi4fnd"
  api_key_required   = "false"
  authorization_type = "NONE"
  route_key          = "ANY /admin/{proxy+}"
  target             = "integrations/mk379zr"
}

resource "aws_apigatewayv2_route" "tfer--a8lsy8o" {
  api_id             = "42z6qi4fnd"
  api_key_required   = "false"
  authorization_type = "NONE"
  route_key          = "ANY /api/info/{proxy+}"
  target             = "integrations/ygfd3vr"
}

resource "aws_apigatewayv2_route" "tfer--kul3956" {
  api_id             = "42z6qi4fnd"
  api_key_required   = "false"
  authorization_type = "NONE"
  route_key          = "ANY /api/news/{proxy+}"
  target             = "integrations/6riy83g"
}

resource "aws_apigatewayv2_route" "tfer--t2n47ru" {
  api_id             = "42z6qi4fnd"
  api_key_required   = "false"
  authorization_type = "NONE"
  route_key          = "ANY /api/board/{proxy+}"
  target             = "integrations/0hxa10q"
}
