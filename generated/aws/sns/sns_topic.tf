resource "aws_sns_topic" "email" {
  name = "dugout-email-notifications"

  tags = {
    Name = "DugOut Email Notifications"
    Environment = "production"
  }
}
