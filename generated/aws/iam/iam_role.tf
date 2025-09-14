# resource "aws_iam_role" "tfer--DMSS3AccessRole-dms-bucket-dugout" {
#   assume_role_policy = <<POLICY
# {
#   "Statement": [
#     {
#       "Action": "sts:AssumeRole",
#       "Condition": {
#         "StringEquals": {
#           "aws:SourceAccount": "726629337826"
#         }
#       },
#       "Effect": "Allow",
#       "Principal": {
#         "Service": "dms.amazonaws.com"
#       },
#       "Sid": "AWSDMSS3BucketPolicyTemplate"
#     }
#   ],
#   "Version": "2012-10-17"
# }
# POLICY

#   description          = "Allows AWS DMS to create one or more Amazon S3 buckets."
#   managed_policy_arns  = ["arn:aws:iam::726629337826:policy/service-role/DMSS3BucketPolicy-DMSS3AccessRole-dms-bucket-dugout"]
#   max_session_duration = "3600"
#   name                 = "DMSS3AccessRole-dms-bucket-dugout"
#   path                 = "/service-role/"
# }

# resource "aws_iam_role" "tfer--DMSS3AccessRole-dms-bucket-dugout-migrations-report" {
#   assume_role_policy = <<POLICY
# {
#   "Statement": [
#     {
#       "Action": "sts:AssumeRole",
#       "Condition": {
#         "StringEquals": {
#           "aws:SourceAccount": "726629337826"
#         }
#       },
#       "Effect": "Allow",
#       "Principal": {
#         "Service": "dms.amazonaws.com"
#       },
#       "Sid": "AWSDMSS3BucketPolicyTemplate"
#     }
#   ],
#   "Version": "2012-10-17"
# }
# POLICY

#   description          = "Allows AWS DMS to create one or more Amazon S3 buckets."
#   managed_policy_arns  = ["arn:aws:iam::726629337826:policy/service-role/DMSS3BucketPolicy-DMSS3AccessRole-dms-bucket-dugout-migrations-report"]
#   max_session_duration = "3600"
#   name                 = "DMSS3AccessRole-dms-bucket-dugout-migrations-report"
#   path                 = "/service-role/"
# }

# resource "aws_iam_role" "tfer--DMSS3AccessRole-dms-serverless-premigration-results-zycsdjyarc" {
#   assume_role_policy = <<POLICY
# {
#   "Statement": [
#     {
#       "Action": "sts:AssumeRole",
#       "Condition": {
#         "StringEquals": {
#           "aws:SourceAccount": "726629337826"
#         }
#       },
#       "Effect": "Allow",
#       "Principal": {
#         "Service": "dms.amazonaws.com"
#       },
#       "Sid": "AWSDMSS3BucketPolicyTemplate"
#     }
#   ],
#   "Version": "2012-10-17"
# }
# POLICY

#   description          = "Allows AWS DMS to create one or more Amazon S3 buckets."
#   managed_policy_arns  = ["arn:aws:iam::726629337826:policy/service-role/DMSS3BucketPolicy-DMSS3AccessRole-dms-serverless-premigration-results-zycsdjyarc"]
#   max_session_duration = "3600"
#   name                 = "DMSS3AccessRole-dms-serverless-premigration-results-zycsdjyarc"
#   path                 = "/service-role/"
# }

# resource "aws_iam_role" "tfer--DMSS3AccessRole-dugout-dms-migrations-report" {
#   assume_role_policy = <<POLICY
# {
#   "Statement": [
#     {
#       "Action": "sts:AssumeRole",
#       "Condition": {
#         "StringEquals": {
#           "aws:SourceAccount": "726629337826"
#         }
#       },
#       "Effect": "Allow",
#       "Principal": {
#         "Service": "dms.amazonaws.com"
#       },
#       "Sid": "AWSDMSS3BucketPolicyTemplate"
#     }
#   ],
#   "Version": "2012-10-17"
# }
# POLICY

#   description          = "Allows AWS DMS to create one or more Amazon S3 buckets."
#   managed_policy_arns  = ["arn:aws:iam::726629337826:policy/service-role/DMSS3BucketPolicy-DMSS3AccessRole-dugout-dms-migrations-report"]
#   max_session_duration = "3600"
#   name                 = "DMSS3AccessRole-dugout-dms-migrations-report"
#   path                 = "/service-role/"
# }

# resource "aws_iam_role" "tfer--DMSSecretManagerAccessRole-prodeventmariadb" {
#   assume_role_policy = <<POLICY
# {
#   "Statement": [
#     {
#       "Action": "sts:AssumeRole",
#       "Condition": {
#         "StringEquals": {
#           "aws:SourceAccount": "726629337826"
#         }
#       },
#       "Effect": "Allow",
#       "Principal": {
#         "Service": [
#           "dms-data-migrations.amazonaws.com",
#           "dms.amazonaws.com",
#           "dms.ap-northeast-2.amazonaws.com"
#         ]
#       },
#       "Sid": "AWSDMSSecretsManagerPolicyTemplate"
#     }
#   ],
#   "Version": "2012-10-17"
# }
# POLICY

#   description          = "Used by AWS DMS to access AWS Secrets Manager for managing database credentials securely."
#   managed_policy_arns  = ["arn:aws:iam::726629337826:policy/service-role/DMSSecretManagerPolicy-DMSSecretManagerAccessRole-prodeventmariadb"]
#   max_session_duration = "3600"
#   name                 = "DMSSecretManagerAccessRole-prodeventmariadb"
#   path                 = "/service-role/"
# }

# resource "aws_iam_role" "tfer--DMSSecretManagerAccessRole-prodeventmysql" {
#   assume_role_policy = <<POLICY
# {
#   "Statement": [
#     {
#       "Action": "sts:AssumeRole",
#       "Condition": {
#         "StringEquals": {
#           "aws:SourceAccount": "726629337826"
#         }
#       },
#       "Effect": "Allow",
#       "Principal": {
#         "Service": [
#           "dms-data-migrations.amazonaws.com",
#           "dms.amazonaws.com",
#           "dms.ap-northeast-2.amazonaws.com"
#         ]
#       },
#       "Sid": "AWSDMSSecretsManagerPolicyTemplate"
#     }
#   ],
#   "Version": "2012-10-17"
# }
# POLICY

#   description          = "Used by AWS DMS to access AWS Secrets Manager for managing database credentials securely."
#   managed_policy_arns  = ["arn:aws:iam::726629337826:policy/service-role/DMSSecretManagerPolicy-DMSSecretManagerAccessRole-prodeventmysql"]
#   max_session_duration = "3600"
#   name                 = "DMSSecretManagerAccessRole-prodeventmysql"
#   path                 = "/service-role/"
# }

resource "aws_iam_role" "tfer--DugOutTaskRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows ECS tasks to call AWS services on your behalf."
  max_session_duration = "3600"
  name                 = "DugOutTaskRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--DugoutTaskExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Allows ECS tasks to call AWS services on your behalf."
  max_session_duration = "3600"
  name                 = "DugoutTaskExecutionRole"
  path                 = "/"
}


# resource "aws_iam_role" "tfer--dms-cloudwatch-logs-role" {
#   assume_role_policy = <<POLICY
# {
#   "Statement": [
#     {
#       "Action": "sts:AssumeRole",
#       "Effect": "Allow",
#       "Principal": {
#         "Service": "dms.amazonaws.com"
#       }
#     }
#   ],
#   "Version": "2012-10-17"
# }
# POLICY

#   managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonDMSCloudWatchLogsRole"]
#   max_session_duration = "3600"
#   name                 = "dms-cloudwatch-logs-role"
#   path                 = "/"
# }

# resource "aws_iam_role" "tfer--dms-vpc-role" {
#   assume_role_policy = <<POLICY
# {
#   "Statement": [
#     {
#       "Action": "sts:AssumeRole",
#       "Effect": "Allow",
#       "Principal": {
#         "Service": "dms.amazonaws.com"
#       },
#       "Sid": ""
#     }
#   ],
#   "Version": "2012-10-17"
# }
# POLICY

#   managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonDMSVPCManagementRole"]
#   max_session_duration = "3600"
#   name                 = "dms-vpc-role"
#   path                 = "/"
# }
