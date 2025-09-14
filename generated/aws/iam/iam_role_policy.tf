# resource "aws_iam_role_policy" "tfer--ecsTaskExecutionRole_AllowReadDbSecret" {
#   name = "AllowReadDbSecret"

#   policy = <<POLICY
# {
#   "Statement": [
#     {
#       "Action": [
#         "secretsmanager:GetSecretValue",
#         "secretsmanager:DescribeSecret"
#       ],
#       "Effect": "Allow",
#       "Resource": [
#         "arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mariadb-HvZT6U",
#         "arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mariadb-HvZT6U*"
#       ],
#       "Sid": "AllowReadDbSecret"
#     }
#   ],
#   "Version": "2012-10-17"
# }
# POLICY

#   role = "ecsTaskExecutionRole"
# }
