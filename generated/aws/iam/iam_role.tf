resource "aws_iam_role" "tfer--AWSServiceRoleForAPIGateway" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ops.apigateway.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "The Service Linked Role is used by Amazon API Gateway."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAPIGateway"
  path                 = "/aws-service-role/ops.apigateway.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonEKS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amazon EKS to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonEKSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonEKS"
  path                 = "/aws-service-role/eks.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonEKSNodegroup" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks-nodegroup.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "This policy allows Amazon EKS to create and manage Nodegroups"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSServiceRoleForAmazonEKSNodegroup"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonEKSNodegroup"
  path                 = "/aws-service-role/eks-nodegroup.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonElasticFileSystem" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticfilesystem.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonElasticFileSystemServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonElasticFileSystem"
  path                 = "/aws-service-role/elasticfilesystem.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonEventBridgeApiDestinations" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "apidestinations.events.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "scheduler-run-ecs"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonEventBridgeApiDestinationsServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonEventBridgeApiDestinations"
  path                 = "/aws-service-role/apidestinations.events.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAutoScaling" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "autoscaling.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Default Service-Linked Role enables access to AWS Services and Resources used or managed by Auto Scaling"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AutoScalingServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAutoScaling"
  path                 = "/aws-service-role/autoscaling.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForBackup" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "backup.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSBackupServiceLinkedRolePolicyForBackup"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForBackup"
  path                 = "/aws-service-role/backup.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForDMSServerless" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "dms.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service Linked Role created for AWS DMS Serverless to perform DMS actions on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSDMSServerlessServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForDMSServerless"
  path                 = "/aws-service-role/dms.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForECS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Policy to enable Amazon ECS to manage your EC2 instances and related resources."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonECSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForECS"
  path                 = "/aws-service-role/ecs.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForElastiCache" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticache.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "This policy allows ElastiCache to manage AWS resources on your behalf as necessary for managing your cache."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/ElastiCacheServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForElastiCache"
  path                 = "/aws-service-role/elasticache.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForElasticLoadBalancing" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticloadbalancing.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows ELB to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForElasticLoadBalancing"
  path                 = "/aws-service-role/elasticloadbalancing.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForGlobalAccelerator" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "globalaccelerator.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Global Accelerator to call AWS services on customer's behalf"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSGlobalAcceleratorSLRPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForGlobalAccelerator"
  path                 = "/aws-service-role/globalaccelerator.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForRDS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amazon RDS to manage AWS resources on your behalf"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForRDS"
  path                 = "/aws-service-role/rds.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSupport" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "support.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Enables resource access for AWS to provide billing, administrative and support services"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSupport"
  path                 = "/aws-service-role/support.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForTrustedAdvisor" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "trustedadvisor.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForTrustedAdvisor"
  path                 = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForVPCS2SVPN" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "s2svpn.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSVPCS2SVpnServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForVPCS2SVPN"
  path                 = "/aws-service-role/s2svpn.amazonaws.com/"
}

resource "aws_iam_role" "tfer--Amazon_EventBridge_Scheduler_ECS_0ff422e59f" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "scheduler.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::726629337826:policy/service-role/Amazon-EventBridge-Scheduler-Execution-Policy-3ee613ee-6c9a-4d40-9b5f-2122630a7af5"]
  max_session_duration = "3600"
  name                 = "Amazon_EventBridge_Scheduler_ECS_0ff422e59f"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--Amazon_EventBridge_Scheduler_ECS_49879e1805" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "scheduler.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::726629337826:policy/service-role/Amazon-EventBridge-Scheduler-Execution-Policy-b3042e93-1913-4d35-bed2-22bc898301f7"]
  max_session_duration = "3600"
  name                 = "Amazon_EventBridge_Scheduler_ECS_49879e1805"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--CognitoIdpSNSServiceRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "455f12a7-77f3-4828-b2d3-aa280302a0ce"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "cognito-idp.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::726629337826:policy/service-role/Cognito-1754817985553"]
  max_session_duration = "3600"
  name                 = "CognitoIdpSNSServiceRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--DMSS3AccessRole-dms-bucket-dugout" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "dms.amazonaws.com"
      },
      "Sid": "AWSDMSS3BucketPolicyTemplate"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows AWS DMS to create one or more Amazon S3 buckets."
  managed_policy_arns  = ["arn:aws:iam::726629337826:policy/service-role/DMSS3BucketPolicy-DMSS3AccessRole-dms-bucket-dugout"]
  max_session_duration = "3600"
  name                 = "DMSS3AccessRole-dms-bucket-dugout"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--DMSS3AccessRole-dms-bucket-dugout-migrations-report" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "dms.amazonaws.com"
      },
      "Sid": "AWSDMSS3BucketPolicyTemplate"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows AWS DMS to create one or more Amazon S3 buckets."
  managed_policy_arns  = ["arn:aws:iam::726629337826:policy/service-role/DMSS3BucketPolicy-DMSS3AccessRole-dms-bucket-dugout-migrations-report"]
  max_session_duration = "3600"
  name                 = "DMSS3AccessRole-dms-bucket-dugout-migrations-report"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--DMSS3AccessRole-dms-serverless-premigration-results-zycsdjyarc" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "dms.amazonaws.com"
      },
      "Sid": "AWSDMSS3BucketPolicyTemplate"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows AWS DMS to create one or more Amazon S3 buckets."
  managed_policy_arns  = ["arn:aws:iam::726629337826:policy/service-role/DMSS3BucketPolicy-DMSS3AccessRole-dms-serverless-premigration-results-zycsdjyarc"]
  max_session_duration = "3600"
  name                 = "DMSS3AccessRole-dms-serverless-premigration-results-zycsdjyarc"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--DMSS3AccessRole-dugout-dms-migrations-report" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "dms.amazonaws.com"
      },
      "Sid": "AWSDMSS3BucketPolicyTemplate"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows AWS DMS to create one or more Amazon S3 buckets."
  managed_policy_arns  = ["arn:aws:iam::726629337826:policy/service-role/DMSS3BucketPolicy-DMSS3AccessRole-dugout-dms-migrations-report"]
  max_session_duration = "3600"
  name                 = "DMSS3AccessRole-dugout-dms-migrations-report"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--DMSSecretManagerAccessRole-prodeventmariadb" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "dms-data-migrations.amazonaws.com",
          "dms.amazonaws.com",
          "dms.ap-northeast-2.amazonaws.com"
        ]
      },
      "Sid": "AWSDMSSecretsManagerPolicyTemplate"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Used by AWS DMS to access AWS Secrets Manager for managing database credentials securely."
  managed_policy_arns  = ["arn:aws:iam::726629337826:policy/service-role/DMSSecretManagerPolicy-DMSSecretManagerAccessRole-prodeventmariadb"]
  max_session_duration = "3600"
  name                 = "DMSSecretManagerAccessRole-prodeventmariadb"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--DMSSecretManagerAccessRole-prodeventmysql" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "726629337826"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "dms-data-migrations.amazonaws.com",
          "dms.amazonaws.com",
          "dms.ap-northeast-2.amazonaws.com"
        ]
      },
      "Sid": "AWSDMSSecretsManagerPolicyTemplate"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Used by AWS DMS to access AWS Secrets Manager for managing database credentials securely."
  managed_policy_arns  = ["arn:aws:iam::726629337826:policy/service-role/DMSSecretManagerPolicy-DMSSecretManagerAccessRole-prodeventmysql"]
  max_session_duration = "3600"
  name                 = "DMSSecretManagerAccessRole-prodeventmysql"
  path                 = "/service-role/"
}

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
  managed_policy_arns  = ["arn:aws:iam::726629337826:policy/DugoutCognitoDeleteUser"]
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

  inline_policy {
    name   = "ECSGetSecretManager"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"secretsmanager:GetSecretValue\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-*\",\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/user/mysql-vm-*\",\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/board/mysql-*\",\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-*\",\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/event/mysql-*\"]}]}"
  }

  inline_policy {
    name   = "ECSPullECRImage"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ecr:GetAuthorizationToken\",\"ecr:BatchCheckLayerAvailability\",\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::726629337826:policy/DugoutCognitoDeleteUser", "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"]
  max_session_duration = "3600"
  name                 = "DugoutTaskExecutionRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--EC2RDSDebug" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services like CloudWatch and Systems Manager on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"]
  max_session_duration = "3600"
  name                 = "EC2RDSDebug"
  path                 = "/"
}

resource "aws_iam_role" "tfer--dms-cloudwatch-logs-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "dms.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonDMSCloudWatchLogsRole"]
  max_session_duration = "3600"
  name                 = "dms-cloudwatch-logs-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--dms-vpc-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "dms.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonDMSVPCManagementRole"]
  max_session_duration = "3600"
  name                 = "dms-vpc-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--ecsEventsRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceEventsRole"]
  max_session_duration = "3600"
  name                 = "ecsEventsRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--ecsTaskExecutionRole" {
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
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "AllowReadDbSecret"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"secretsmanager:GetSecretValue\",\"secretsmanager:DescribeSecret\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mariadb-HvZT6U\",\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mariadb-HvZT6U*\"],\"Sid\":\"AllowReadDbSecret\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/SecretsManagerReadWrite", "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"]
  max_session_duration = "3600"
  name                 = "ecsTaskExecutionRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--ecsTaskExecutionRole-news" {
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

  description          = "ecsTaskExecutionRole-news"
  managed_policy_arns  = ["arn:aws:iam::726629337826:policy/ECSGetSecretsmanager", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore", "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"]
  max_session_duration = "3600"
  name                 = "ecsTaskExecutionRole-news"
  path                 = "/"
}

resource "aws_iam_role" "tfer--ecstaskexecution-role" {
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

  description          = "ecstaskexecution-role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"]
  max_session_duration = "3600"
  name                 = "ecstaskexecution-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--rds-monitoring-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "monitoring.rds.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"]
  max_session_duration = "3600"
  name                 = "rds-monitoring-role"
  path                 = "/"
}
