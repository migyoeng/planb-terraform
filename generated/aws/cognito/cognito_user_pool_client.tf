resource "aws_cognito_user_pool_client" "tfer--dugout-main_3a58ij7t5e5va7qjkfdmjsghq" {
  access_token_validity                         = "60"
  allowed_oauth_flows                           = ["code"]
  allowed_oauth_flows_user_pool_client          = "true"
  allowed_oauth_scopes                          = ["email", "openid", "phone"]
  auth_session_validity                         = "3"
  callback_urls                                 = ["http://localhost:5173/"]
  enable_propagate_additional_user_context_data = "false"
  enable_token_revocation                       = "true"
  explicit_auth_flows                           = ["ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_AUTH", "ALLOW_USER_SRP_AUTH"]
  id_token_validity                             = "60"
  name                                          = "dugout-main"
  prevent_user_existence_errors                 = "ENABLED"
  refresh_token_validity                        = "5"
  supported_identity_providers                  = ["COGNITO"]

  token_validity_units {
    access_token  = "minutes"
    id_token      = "minutes"
    refresh_token = "days"
  }

  user_pool_id = aws_cognito_user_pool.tfer--User-0020-pool-0020---0020-lrmgzt_ap-northeast-2_KYxl8SX2a.id
}
