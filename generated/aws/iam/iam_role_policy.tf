resource "aws_iam_role_policy" "tfer--DugoutTaskExecutionRole_ECSGetSecretManager" {
  name = "ECSGetSecretManager"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-*",
        "arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/user/mysql-vm-*",
        "arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/board/mysql-*",
        "arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-*",
        "arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/event/mysql-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "DugoutTaskExecutionRole"
}

resource "aws_iam_role_policy" "tfer--DugoutTaskExecutionRole_ECSPullECRImage" {
  name = "ECSPullECRImage"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "DugoutTaskExecutionRole"
}

resource "aws_iam_role_policy" "tfer--ecsTaskExecutionRole_AllowReadDbSecret" {
  name = "AllowReadDbSecret"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:GetSecretValue",
        "secretsmanager:DescribeSecret"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mariadb-HvZT6U",
        "arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mariadb-HvZT6U*"
      ],
      "Sid": "AllowReadDbSecret"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "ecsTaskExecutionRole"
}
