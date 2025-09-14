# AWS 계정 정보 데이터 소스
data "aws_caller_identity" "current" {}

# Cognito용 SNS Role 생성
# resource "aws_iam_role" "cognito_sns_role" {
#   name = "CognitoIdpSNSServiceRole"

#   assume_role_policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = "sts:AssumeRole"
#         Effect = "Allow"
#         Principal = {
#           Service = "cognito-idp.amazonaws.com"
#         }
#       }
#     ]
#   })
# }

# # SNS 정책 연결
# resource "aws_iam_role_policy_attachment" "cognito_sns_policy" {
#   role       = aws_iam_role.cognito_sns_role.name
#   policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonCognitoIdpServiceRole"
# }

resource "aws_cognito_user_pool" "tfer--User-0020-pool-0020---0020-lrmgzt_ap-northeast-2_KYxl8SX2a" {
  account_recovery_setting {
    recovery_mechanism {
      name     = "verified_email"
      priority = "1"
    }

    recovery_mechanism {
      name     = "verified_phone_number"
      priority = "2"
    }
  }

  admin_create_user_config {
    allow_admin_create_user_only = "false"
  }

  auto_verified_attributes = ["email"]
  deletion_protection      = "INACTIVE"

  email_configuration {
    email_sending_account = "COGNITO_DEFAULT"
  }

  mfa_configuration = "OFF"
  name              = "User pool - lrmgzt"

  password_policy {
    minimum_length                   = "8"
    password_history_size            = "0"
    require_lowercase                = "true"
    require_numbers                  = "true"
    require_symbols                  = "true"
    require_uppercase                = "true"
    temporary_password_validity_days = "7"
  }

  region = "ap-northeast-2"

  schema {
    attribute_data_type      = "String"
    developer_only_attribute = "false"
    mutable                  = "true"
    name                     = "birthdate"
    required                 = "true"

    string_attribute_constraints {
      max_length = "10"
      min_length = "10"
    }
  }

  schema {
    attribute_data_type      = "String"
    developer_only_attribute = "false"
    mutable                  = "true"
    name                     = "email"
    required                 = "true"

    string_attribute_constraints {
      max_length = "2048"
      min_length = "0"
    }
  }

  schema {
    attribute_data_type      = "String"
    developer_only_attribute = "false"
    mutable                  = "true"
    name                     = "name"
    required                 = "true"

    string_attribute_constraints {
      max_length = "2048"
      min_length = "0"
    }
  }

  schema {
    attribute_data_type      = "String"
    developer_only_attribute = "false"
    mutable                  = "true"
    name                     = "phone_number"
    required                 = "true"

    string_attribute_constraints {
      max_length = "2048"
      min_length = "0"
    }
  }

  schema {
    attribute_data_type      = "String"
    developer_only_attribute = "false"
    mutable                  = "true"
    name                     = "date_joined"
    required                 = "false"

    string_attribute_constraints {
      max_length = "10"
      min_length = "10"
    }
  }

  schema {
    attribute_data_type      = "String"
    developer_only_attribute = "false"
    mutable                  = "true"
    name                     = "team"
    required                 = "false"

    string_attribute_constraints {
      max_length = "50"
      min_length = "1"
    }
  }

  sign_in_policy {
    allowed_first_auth_factors = ["PASSWORD"]
  }

  # sms_configuration {
  #   external_id    = "455f12a7-77f3-4828-b2d3-aa280302a0ce"
  #   sns_caller_arn = aws_iam_role.cognito_sns_role.arn
  #   sns_region     = "ap-northeast-1"
  # }

  user_pool_tier      = "ESSENTIALS"
  username_attributes = []

  username_configuration {
    case_sensitive = "false"
  }

  verification_message_template {
    default_email_option = "CONFIRM_WITH_CODE"
  }

  lifecycle {
    ignore_changes = [schema]
  }
}