resource "aws_acm_certificate" "tfer--3a788649-2f0a-4c02-956f-6879b38a3f01_123465-002E-shop" {
  domain_name   = "123465.shop"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "ENABLED"
    export                                      = "DISABLED"
  }

  region                    = "ap-northeast-2"
  subject_alternative_names = ["123465.shop"]
  validation_method         = "DNS"
}
