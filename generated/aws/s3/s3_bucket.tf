resource "aws_s3_bucket" "tfer--dugout-dms" {
  bucket        = "dugout-dms"
  force_destroy = "false"

  grant {
    id          = "cda26277fc1d5fbff7b43a20938995e4f1c96d914eea7a7c9ac07a7505ce9314"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  region              = "ap-northeast-2"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--dugout-frontend" {
  bucket        = "dugout-frontend"
  force_destroy = "false"

  grant {
    id          = "cda26277fc1d5fbff7b43a20938995e4f1c96d914eea7a7c9ac07a7505ce9314"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Id": "PolicyForCloudFrontPrivateContent",
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Condition": {
        "StringEquals": {
          "AWS:SourceArn": "arn:aws:cloudfront::726629337826:distribution/E1NQOA9YMS3RQ6"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudfront.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::dugout-frontend/*",
      "Sid": "AllowCloudFrontServicePrincipal"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  region        = "ap-northeast-2"
  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }

  website {
    error_document = "index.html"
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "tfer--wjdwlstn12" {
  bucket        = "wjdwlstn12"
  force_destroy = "false"

  grant {
    id          = "cda26277fc1d5fbff7b43a20938995e4f1c96d914eea7a7c9ac07a7505ce9314"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  grant {
    permissions = ["READ", "READ_ACP"]
    type        = "Group"
    uri         = "http://acs.amazonaws.com/groups/s3/LogDelivery"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Id": "PolicyForCloudFrontPrivateContent",
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Condition": {
        "StringEquals": {
          "AWS:SourceArn": "arn:aws:cloudfront::726629337826:distribution/ERK7L32CP7F6V"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudfront.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::wjdwlstn12/*",
      "Sid": "AllowCloudFrontServicePrincipal"
    },
    {
      "Action": "s3:GetObject",
      "Condition": {
        "ArnLike": {
          "AWS:SourceArn": "arn:aws:cloudfront::726629337826:distribution/E1SHJMX0G10L19"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudfront.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::wjdwlstn12/*",
      "Sid": "AllowCloudFrontServicePrincipal"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  region        = "ap-northeast-2"
  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "true"
    mfa_delete = "false"
  }

  website {
    index_document = "test_main.html"
  }
}

resource "aws_s3_bucket" "tfer--wjdwlstndlalwl" {
  bucket        = "wjdwlstndlalwl"
  force_destroy = "false"

  grant {
    id          = "cda26277fc1d5fbff7b43a20938995e4f1c96d914eea7a7c9ac07a7505ce9314"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Resource": "arn:aws:s3:::wjdwlstndlalwl/*",
      "Sid": "PublicReadGetObject"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  region        = "ap-northeast-2"
  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}
