resource "aws_cognito_user_pool_client" "tfer--250822_test_783nooe1lkidr7l7ac91di2q4i" {
  access_token_validity                         = "60"
  allowed_oauth_flows                           = ["code"]
  allowed_oauth_flows_user_pool_client          = "true"
  allowed_oauth_scopes                          = ["email", "openid", "phone"]
  auth_session_validity                         = "3"
  callback_urls                                 = ["http://localhost:8000/event/"]
  enable_propagate_additional_user_context_data = "false"
  enable_token_revocation                       = "true"
  explicit_auth_flows                           = ["ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_AUTH", "ALLOW_USER_SRP_AUTH"]
  id_token_validity                             = "60"
  name                                          = "250822_test"
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

resource "aws_cognito_user_pool_client" "tfer--My-0020-SPA-0020-app-0020---0020-ak0udl_62i5q9et3hjepf7kt8ujs5gkhu" {
  access_token_validity                         = "1"
  allowed_oauth_flows                           = ["code"]
  allowed_oauth_flows_user_pool_client          = "true"
  allowed_oauth_scopes                          = ["email", "openid", "profile"]
  auth_session_validity                         = "5"
  callback_urls                                 = ["https://d3fkb31k7s3zg4.cloudfront.net/test_test2.html"]
  enable_propagate_additional_user_context_data = "false"
  enable_token_revocation                       = "true"
  explicit_auth_flows                           = ["ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_AUTH", "ALLOW_USER_SRP_AUTH"]
  id_token_validity                             = "1"
  logout_urls                                   = ["https://d3fkb31k7s3zg4.cloudfront.net/test_test2.html"]
  name                                          = "My SPA app - ak0udl"
  prevent_user_existence_errors                 = "ENABLED"

  refresh_token_rotation {
    feature                    = "DISABLED"
    retry_grace_period_seconds = "0"
  }

  refresh_token_validity       = "5"
  region                       = "ap-northeast-2"
  supported_identity_providers = ["COGNITO"]

  token_validity_units {
    access_token  = "days"
    id_token      = "days"
    refresh_token = "days"
  }

  user_pool_id = aws_cognito_user_pool.tfer--User-0020-pool-0020---0020-lrmgzt_ap-northeast-2_KYxl8SX2a.id
}

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

resource "aws_cognito_user_pool_client" "tfer--dugout-users-public_client_28m777op4t7t3ufms2f3197bp4" {
  access_token_validity                         = "60"
  allowed_oauth_flows                           = ["code"]
  allowed_oauth_flows_user_pool_client          = "true"
  allowed_oauth_scopes                          = ["aws.cognito.signin.user.admin", "email", "openid", "profile"]
  auth_session_validity                         = "3"
  callback_urls                                 = ["https://dwreytuh5uwv5.cloudfront.net/test_main.html"]
  enable_propagate_additional_user_context_data = "false"
  enable_token_revocation                       = "true"
  explicit_auth_flows                           = ["ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_AUTH", "ALLOW_USER_SRP_AUTH"]
  id_token_validity                             = "60"
  logout_urls                                   = ["https://dwreytuh5uwv5.cloudfront.net/test_main.html"]
  name                                          = "dugout-users-public_client"
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

resource "aws_cognito_user_pool_client" "tfer--dugout-users_45e0a4p1ivur4oas8sea467887" {
  access_token_validity                         = "60"
  allowed_oauth_flows                           = ["code"]
  allowed_oauth_flows_user_pool_client          = "true"
  allowed_oauth_scopes                          = ["email", "openid", "profile"]
  auth_session_validity                         = "3"
  callback_urls                                 = ["http://localhost:8000/users/auth/callback", "https://dwreytuh5uwv5.cloudfront.net/test_main.html"]
  enable_propagate_additional_user_context_data = "false"
  enable_token_revocation                       = "true"
  explicit_auth_flows                           = ["ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH"]
  id_token_validity                             = "60"
  logout_urls                                   = ["http://localhost:8000/users/auth/loggedout", "https://dwreytuh5uwv5.cloudfront.net/test_main.html"]
  name                                          = "dugout-users"
  prevent_user_existence_errors                 = "ENABLED"
  read_attributes                               = ["birthdate", "email", "name", "phone_number"]
  refresh_token_validity                        = "5"
  supported_identity_providers                  = ["COGNITO"]

  token_validity_units {
    access_token  = "minutes"
    id_token      = "minutes"
    refresh_token = "days"
  }

  user_pool_id     = aws_cognito_user_pool.tfer--User-0020-pool-0020---0020-lrmgzt_ap-northeast-2_KYxl8SX2a.id
  write_attributes = ["birthdate", "email", "name", "phone_number"]
}
