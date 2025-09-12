# CloudFront Remote State 데이터 소스
data "terraform_remote_state" "cloudfront" {
  backend = "local"

  config = {
    path = "../../../generated/aws/cloudfront/terraform.tfstate"
  }
}

resource "aws_s3_bucket_policy" "tfer--dugout-frontend" {
  bucket = aws_s3_bucket.tfer--dugout-frontend.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "AllowCloudFrontServicePrincipal"
        Effect = "Allow"
        Principal = {
          Service = "cloudfront.amazonaws.com"
        }
        Action   = "s3:GetObject"
        Resource = "${aws_s3_bucket.tfer--dugout-frontend.arn}/*"
        Condition = {
          StringEquals = {
            "AWS:SourceArn" = "arn:aws:cloudfront::726629337826:distribution/${data.terraform_remote_state.cloudfront.outputs.aws_cloudfront_distribution_tfer--E1NQOA9YMS3RQ6_id}"
          }
        }
      }
    ]
  })
}

resource "aws_s3_bucket_policy" "tfer--wjdwlstn12" {
  bucket = "wjdwlstn12"
  policy = "{\"Id\":\"PolicyForCloudFrontPrivateContent\",\"Statement\":[{\"Action\":\"s3:GetObject\",\"Condition\":{\"StringEquals\":{\"AWS:SourceArn\":\"arn:aws:cloudfront::726629337826:distribution/ERK7L32CP7F6V\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"cloudfront.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::wjdwlstn12/*\",\"Sid\":\"AllowCloudFrontServicePrincipal\"},{\"Action\":\"s3:GetObject\",\"Condition\":{\"ArnLike\":{\"AWS:SourceArn\":\"arn:aws:cloudfront::726629337826:distribution/E1SHJMX0G10L19\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"cloudfront.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::wjdwlstn12/*\",\"Sid\":\"AllowCloudFrontServicePrincipal\"}],\"Version\":\"2008-10-17\"}"
  region = "ap-northeast-2"
}

resource "aws_s3_bucket_policy" "tfer--wjdwlstndlalwl" {
  bucket = "wjdwlstndlalwl"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::wjdwlstndlalwl/*\",\"Sid\":\"PublicReadGetObject\"}],\"Version\":\"2012-10-17\"}"
  region = "ap-northeast-2"
}
