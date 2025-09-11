# DMS S3 Bucket
resource "aws_s3_bucket" "tfer--dugout-dms" {
  bucket        = "dugout-dms"
  force_destroy = false

  object_lock_enabled = false
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = true
    }
  }

  versioning {
    enabled    = false
    mfa_delete = false
  }

  tags = {
    Name = "dugout-dms"
  }
}

# Frontend S3 Bucket
resource "aws_s3_bucket" "tfer--dugout-frontend" {
  bucket        = "dugout-frontend"
  force_destroy = false

  object_lock_enabled = false

  tags = {
    Name = "dugout-frontend"
  }
}

# 추가 S3 Bucket들
resource "aws_s3_bucket" "tfer--wjdwlstn12" {
  bucket        = "wjdwlstn12"
  force_destroy = false

  tags = {
    Name = "wjdwlstn12"
  }
}

resource "aws_s3_bucket" "tfer--wjdwlstndlalwl" {
  bucket        = "wjdwlstndlalwl"
  force_destroy = false

  tags = {
    Name = "wjdwlstndlalwl"
  }
}

# S3 Bucket Public Access Block
resource "aws_s3_bucket_public_access_block" "tfer--dugout-dms" {
  bucket = aws_s3_bucket.tfer--dugout-dms.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_public_access_block" "tfer--dugout-frontend" {
  bucket = aws_s3_bucket.tfer--dugout-frontend.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_public_access_block" "tfer--wjdwlstn12" {
  bucket = aws_s3_bucket.tfer--wjdwlstn12.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_public_access_block" "tfer--wjdwlstndlalwl" {
  bucket = aws_s3_bucket.tfer--wjdwlstndlalwl.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}