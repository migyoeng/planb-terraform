resource "aws_ecs_cluster" "tfer--DUGOUT-CLUSTER" {
  name   = "DUGOUT-CLUSTER"
  region = "ap-northeast-2"

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}
