resource "aws_ecs_cluster" "tfer--DUGOUT-CLUSTER" {
  name = var.cluster_name

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  tags = var.cluster_tags
}

resource "aws_ecs_cluster_capacity_providers" "tfer--DUGOUT-CLUSTER" {
  cluster_name = aws_ecs_cluster.tfer--DUGOUT-CLUSTER.name

  capacity_providers = var.cluster_capacity_providers

  default_capacity_provider_strategy {
    capacity_provider = var.cluster_default_capacity_provider_strategy[0].capacity_provider
    weight           = var.cluster_default_capacity_provider_strategy[0].weight
    base             = var.cluster_default_capacity_provider_strategy[0].base
  }
}