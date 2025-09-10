resource "aws_sns_topic" "tfer--email" {
  application_success_feedback_sample_rate = "0"
  content_based_deduplication              = "false"
  fifo_topic                               = "false"
  firehose_success_feedback_sample_rate    = "0"
  http_success_feedback_sample_rate        = "0"
  lambda_success_feedback_sample_rate      = "0"
  name                                     = "email"

  policy = <<POLICY
{
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Action": [
        "SNS:GetTopicAttributes",
        "SNS:SetTopicAttributes",
        "SNS:AddPermission",
        "SNS:RemovePermission",
        "SNS:DeleteTopic",
        "SNS:Subscribe",
        "SNS:ListSubscriptionsByTopic",
        "SNS:Publish"
      ],
      "Condition": {
        "StringEquals": {
          "AWS:SourceOwner": "726629337826"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:sns:ap-northeast-2:726629337826:email",
      "Sid": "__default_statement_ID"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  region                           = "ap-northeast-2"
  signature_version                = "0"
  sqs_success_feedback_sample_rate = "0"
}
