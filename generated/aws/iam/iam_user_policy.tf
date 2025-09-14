# resource "aws_iam_user_policy" "tfer--cloudwatchagent-onprem_CloudWatchAgentServerPolicy-002B-" {
#   name = "CloudWatchAgentServerPolicy+"

#   policy = <<POLICY
# {
#   "Statement": [
#     {
#       "Action": [
#         "logs:CreateLogGroup",
#         "logs:CreateLogStream",
#         "logs:DescribeLogGroups",
#         "logs:DescribeLogStreams",
#         "logs:PutLogEvents",
#         "logs:PutRetentionPolicy"
#       ],
#       "Effect": "Allow",
#       "Resource": "*"
#     },
#     {
#       "Action": "cloudwatch:PutMetricData",
#       "Effect": "Allow",
#       "Resource": "*"
#     }
#   ],
#   "Version": "2012-10-17"
# }
# POLICY

#   user = "cloudwatchagent-onprem"
# }
