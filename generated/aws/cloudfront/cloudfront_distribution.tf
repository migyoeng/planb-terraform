# Origin Access Control 생성
resource "aws_cloudfront_origin_access_control" "dugout_frontend_oac" {
  name                              = "dugout-frontend-oac"
  description                       = "OAC for dugout-frontend S3 bucket"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

# AWS 계정 정보 데이터 소스
data "aws_caller_identity" "current" {}

resource "aws_cloudfront_distribution" "tfer--E1NQOA9YMS3RQ6" {
  comment = "Dugout 배포"

  custom_error_response {
    error_caching_min_ttl = "0"
    error_code            = "403"
    response_code         = "200"
    response_page_path    = "/index.html"
  }

  custom_error_response {
    error_caching_min_ttl = "0"
    error_code            = "404"
    response_code         = "200"
    response_page_path    = "/index.html"
  }

  default_cache_behavior {
    allowed_methods = ["GET", "HEAD"]
    cache_policy_id = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    cached_methods  = ["GET", "HEAD"]
    compress        = "true"
    default_ttl     = "0"

    grpc_config {
      enabled = "false"
    }

    max_ttl                = "0"
    min_ttl                = "0"
    smooth_streaming       = "false"
    target_origin_id       = "dugout-frontend-test.s3.ap-northeast-2.amazonaws.com-mew7umt2z7f"
    viewer_protocol_policy = "redirect-to-https"
  }

  enabled         = "true"
  http_version    = "http2"
  is_ipv6_enabled = "true"

  origin {
    connection_attempts      = "3"
    connection_timeout       = "10"
    domain_name              = "dugout-frontend-test.s3.ap-northeast-2.amazonaws.com"
    origin_access_control_id = aws_cloudfront_origin_access_control.dugout_frontend_oac.id
    origin_id                = "dugout-frontend-test.s3.ap-northeast-2.amazonaws.com-mew7umt2z7f"
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  retain_on_delete = "false"
  staging          = "false"

  tags = {
    Name = "dugout-main"
  }

  tags_all = {
    Name = "dugout-main"
  }

  viewer_certificate {
    cloudfront_default_certificate = "true"
    minimum_protocol_version       = "TLSv1"
  }
}

