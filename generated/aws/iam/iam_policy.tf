resource "aws_iam_policy" "tfer--Amazon-EventBridge-Scheduler-Execution-Policy-1f477c57-9252-42d0-a494-83f29466e4c9" {
  name = "Amazon-EventBridge-Scheduler-Execution-Policy-1f477c57-9252-42d0-a494-83f29466e4c9"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "ecs:RunTask",
      "Condition": {
        "ArnEquals": {
          "ecs:cluster": "arn:aws:ecs:ap-northeast-2:726629337826:cluster/news-cluster"
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:ecs:ap-northeast-2:726629337826:task-definition/news-task-crawl:*",
      "Sid": "AllowRunTaskOnNewsCluster"
    },
    {
      "Action": "iam:PassRole",
      "Condition": {
        "StringEquals": {
          "iam:PassedToService": "ecs-tasks.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::726629337826:role/ecsTaskExecutionRole",
        "arn:aws:iam::726629337826:role/ecsTaskExecutionRole-news"
      ],
      "Sid": "AllowPassOnlyTaskRoles"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Amazon-EventBridge-Scheduler-Execution-Policy-22bc29a4-ffae-4e13-a988-6e09f907d3d4" {
  name = "Amazon-EventBridge-Scheduler-Execution-Policy-22bc29a4-ffae-4e13-a988-6e09f907d3d4"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecs:RunTask"
      ],
      "Condition": {
        "ArnLike": {
          "ecs:cluster": "arn:aws:ecs:ap-northeast-2:726629337826:cluster/NEWS-CLUSTER"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ecs:ap-northeast-2:726629337826:task-definition/news-task-crawl:*",
        "arn:aws:ecs:ap-northeast-2:726629337826:task-definition/news-task-crawl"
      ]
    },
    {
      "Action": "iam:PassRole",
      "Condition": {
        "StringLike": {
          "iam:PassedToService": "ecs-tasks.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Amazon-EventBridge-Scheduler-Execution-Policy-3ee613ee-6c9a-4d40-9b5f-2122630a7af5" {
  name = "Amazon-EventBridge-Scheduler-Execution-Policy-3ee613ee-6c9a-4d40-9b5f-2122630a7af5"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecs:RunTask"
      ],
      "Condition": {
        "ArnLike": {
          "ecs:cluster": "arn:aws:ecs:ap-northeast-2:726629337826:cluster/NEWS-CLUSTER"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ecs:ap-northeast-2:726629337826:task-definition/news-task-crawl:*",
        "arn:aws:ecs:ap-northeast-2:726629337826:task-definition/news-task-crawl"
      ]
    },
    {
      "Action": "iam:PassRole",
      "Condition": {
        "StringLike": {
          "iam:PassedToService": "ecs-tasks.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Amazon-EventBridge-Scheduler-Execution-Policy-595c0808-07dd-41a1-a224-7dc4f9ab6821" {
  name = "Amazon-EventBridge-Scheduler-Execution-Policy-595c0808-07dd-41a1-a224-7dc4f9ab6821"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecs:RunTask"
      ],
      "Condition": {
        "ArnLike": {
          "ecs:cluster": "arn:aws:ecs:ap-northeast-2:726629337826:cluster/NEWS-CLUSTER"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ecs:ap-northeast-2:726629337826:task-definition/news-task-crawl:*",
        "arn:aws:ecs:ap-northeast-2:726629337826:task-definition/news-task-crawl"
      ]
    },
    {
      "Action": "iam:PassRole",
      "Condition": {
        "StringLike": {
          "iam:PassedToService": "ecs-tasks.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Amazon-EventBridge-Scheduler-Execution-Policy-acd7b4f6-2b14-4742-a688-1d0a009ba5a1" {
  name = "Amazon-EventBridge-Scheduler-Execution-Policy-acd7b4f6-2b14-4742-a688-1d0a009ba5a1"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "ecs:RunTask",
      "Condition": {
        "ArnEquals": {
          "ecs:cluster": "arn:aws:ecs:ap-northeast-2:726629337826:cluster/NEWS-CLUSTER"
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:ecs:ap-northeast-2:726629337826:task-definition/news-task-crawl:*",
      "Sid": "RunTaskOnCluster"
    },
    {
      "Action": "iam:PassRole",
      "Condition": {
        "StringEquals": {
          "iam:PassedToService": "ecs-tasks.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::726629337826:role/ecsTaskExecutionRole",
        "arn:aws:iam::726629337826:role/news-task-role"
      ],
      "Sid": "PassTaskRoles"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Amazon-EventBridge-Scheduler-Execution-Policy-b3042e93-1913-4d35-bed2-22bc898301f7" {
  name = "Amazon-EventBridge-Scheduler-Execution-Policy-b3042e93-1913-4d35-bed2-22bc898301f7"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecs:RunTask"
      ],
      "Condition": {
        "ArnLike": {
          "ecs:cluster": "arn:aws:ecs:ap-northeast-2:726629337826:cluster/NEWS-CLUSTER"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ecs:ap-northeast-2:726629337826:task-definition/news-task-crawl:*",
        "arn:aws:ecs:ap-northeast-2:726629337826:task-definition/news-task-crawl"
      ]
    },
    {
      "Action": "iam:PassRole",
      "Condition": {
        "StringLike": {
          "iam:PassedToService": "ecs-tasks.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Amazon-EventBridge-Scheduler-Execution-Policy-b4134b53-6677-4b1b-b587-c28eb87f0b89" {
  name = "Amazon-EventBridge-Scheduler-Execution-Policy-b4134b53-6677-4b1b-b587-c28eb87f0b89"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecs:RunTask"
      ],
      "Condition": {
        "ArnLike": {
          "ecs:cluster": "arn:aws:ecs:ap-northeast-2:726629337826:cluster/NEWS-CLUSTER"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ecs:ap-northeast-2:726629337826:task-definition/news-task-crawl:*",
        "arn:aws:ecs:ap-northeast-2:726629337826:task-definition/news-task-crawl"
      ]
    },
    {
      "Action": "iam:PassRole",
      "Condition": {
        "StringLike": {
          "iam:PassedToService": "ecs-tasks.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Cognito-1754817985553" {
  name = "Cognito-1754817985553"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sns:publish"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--DMSS3BucketPolicy-DMSS3AccessRole-dms-bucket-dugout" {
  description = "Access to specific S3 bucket"
  name        = "DMSS3BucketPolicy-DMSS3AccessRole-dms-bucket-dugout"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::dms-bucket-dugout/*"
      ],
      "Sid": "AllObjectActions"
    },
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "ListBucketActions"
    },
    {
      "Action": [
        "s3:GetBucketLocation",
        "s3:GetBucketVersioning"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::dms-bucket-dugout"
      ],
      "Sid": "GetBucketActions"
    },
    {
      "Action": "s3:*",
      "Condition": {
        "Bool": {
          "aws:SecureTransport": false
        }
      },
      "Effect": "Deny",
      "Resource": [
        "arn:aws:s3:::dms-bucket-dugout/*",
        "arn:aws:s3:::dms-bucket-dugout"
      ],
      "Sid": "EnableBucketHTTPSOnly"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--DMSS3BucketPolicy-DMSS3AccessRole-dms-bucket-dugout-migrations-report" {
  description = "Access to specific S3 bucket"
  name        = "DMSS3BucketPolicy-DMSS3AccessRole-dms-bucket-dugout-migrations-report"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::dms-bucket-dugout/*"
      ],
      "Sid": "AllObjectActions"
    },
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "ListBucketActions"
    },
    {
      "Action": [
        "s3:GetBucketLocation",
        "s3:GetBucketVersioning"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::dms-bucket-dugout"
      ],
      "Sid": "GetBucketActions"
    },
    {
      "Action": "s3:*",
      "Condition": {
        "Bool": {
          "aws:SecureTransport": false
        }
      },
      "Effect": "Deny",
      "Resource": [
        "arn:aws:s3:::dms-bucket-dugout/*",
        "arn:aws:s3:::dms-bucket-dugout"
      ],
      "Sid": "EnableBucketHTTPSOnly"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--DMSS3BucketPolicy-DMSS3AccessRole-dms-serverless-premigration-results-zycsdjyarc" {
  description = "Access to specific S3 bucket"
  name        = "DMSS3BucketPolicy-DMSS3AccessRole-dms-serverless-premigration-results-zycsdjyarc"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::dms-serverless-premigration-results-zycsdjyarc/*"
      ],
      "Sid": "AllObjectActions"
    },
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "ListBucketActions"
    },
    {
      "Action": [
        "s3:GetBucketLocation",
        "s3:GetBucketVersioning"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::dms-serverless-premigration-results-zycsdjyarc"
      ],
      "Sid": "GetBucketActions"
    },
    {
      "Action": "s3:*",
      "Condition": {
        "Bool": {
          "aws:SecureTransport": false
        }
      },
      "Effect": "Deny",
      "Resource": [
        "arn:aws:s3:::dms-serverless-premigration-results-zycsdjyarc/*",
        "arn:aws:s3:::dms-serverless-premigration-results-zycsdjyarc"
      ],
      "Sid": "EnableBucketHTTPSOnly"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--DMSS3BucketPolicy-DMSS3AccessRole-dugout-dms-migrations-report" {
  description = "Access to specific S3 bucket"
  name        = "DMSS3BucketPolicy-DMSS3AccessRole-dugout-dms-migrations-report"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::dugout-dms/*"
      ],
      "Sid": "AllObjectActions"
    },
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "ListBucketActions"
    },
    {
      "Action": [
        "s3:GetBucketLocation",
        "s3:GetBucketVersioning"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::dugout-dms"
      ],
      "Sid": "GetBucketActions"
    },
    {
      "Action": "s3:*",
      "Condition": {
        "Bool": {
          "aws:SecureTransport": false
        }
      },
      "Effect": "Deny",
      "Resource": [
        "arn:aws:s3:::dugout-dms/*",
        "arn:aws:s3:::dugout-dms"
      ],
      "Sid": "EnableBucketHTTPSOnly"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--DMSSecretManagerPolicy-DMSSecretManagerAccessRole-prodeventmariadb" {
  description = "Access to Secret Manager"
  name        = "DMSSecretManagerPolicy-DMSSecretManagerAccessRole-prodeventmariadb"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:DescribeSecret",
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/event/mariadb-nCh4Yk"
      ],
      "Sid": "AllowDMSSecretsManagerRole"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--DMSSecretManagerPolicy-DMSSecretManagerAccessRole-prodeventmysql" {
  description = "Access to Secret Manager"
  name        = "DMSSecretManagerPolicy-DMSSecretManagerAccessRole-prodeventmysql"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:DescribeSecret",
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/event/mysql-h5tbFx"
      ],
      "Sid": "AllowDMSSecretsManagerRole"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--DugoutCognitoDeleteUser" {
  description = "Cognito User Delete"
  name        = "DugoutCognitoDeleteUser"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cognito-idp:AdminDeleteUser"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:cognito-idp:ap-northeast-2:726629337826:userpool/ap-northeast-2_KYxl8SX2a"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--ECSGetSecretsmanager" {
  description = "ECSGetSecretsmanager"
  name        = "ECSGetSecretsmanager"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:GetSecretValue",
        "secretsmanager:DescribeSecret"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mariadb-HvZT6U-*",
      "Sid": "AllowReadDbSecret"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--GithubActionPolicy" {
  description = "GithubActionPolicy"
  name        = "GithubActionPolicy"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload",
        "ecr:PutImage"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--dugout-users" {
  name = "dugout-users"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cognito-idp:ConfirmSignUp"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:cognito-idp:ap-northeast-2:726629337826:userpool/ap-northeast-2_5l8gegLlp"
    },
    {
      "Action": [
        "cognito-idp:AdminGetUser"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:cognito-idp:ap-northeast-2:726629337826:userpool/ap-northeast-2_5l8gegLlp"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}
