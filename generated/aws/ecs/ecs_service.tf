resource "aws_ecs_service" "tfer--DUGOUT-CLUSTER_Board-Web-Task-service" {
  availability_zone_rebalancing = "DISABLED"
  cluster                       = "DUGOUT-CLUSTER"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "1"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "300"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "board-container"
    container_port   = "8000"
    target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:726629337826:targetgroup/Board-TG/2496cc953a68f155"
  }

  name = "Board-Web-Task-service"

  network_configuration {
    assign_public_ip = "true"
    security_groups  = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ECS-SG_sg-0dd82609d8f080a0f_id}"]
    subnets          = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-00258c4a6ac72c4ce_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0e08b5b05fdad2efc_id}"]
  }

  platform_version    = "LATEST"
  region              = "ap-northeast-2"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:ap-northeast-2:726629337826:task-definition/Board-Web-Task:5"
}

resource "aws_ecs_service" "tfer--DUGOUT-CLUSTER_Event-Web-Task-service" {
  availability_zone_rebalancing = "DISABLED"
  cluster                       = "DUGOUT-CLUSTER"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "1"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "300"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "event-container"
    container_port   = "8002"
    target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:726629337826:targetgroup/Event-TG/be5b96b559965beb"
  }

  name = "Event-Web-Task-service"

  network_configuration {
    assign_public_ip = "true"
    security_groups  = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ECS-SG_sg-0dd82609d8f080a0f_id}"]
    subnets          = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-00258c4a6ac72c4ce_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0e08b5b05fdad2efc_id}"]
  }

  platform_version    = "LATEST"
  region              = "ap-northeast-2"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:ap-northeast-2:726629337826:task-definition/Event-Web-Task:5"
}

resource "aws_ecs_service" "tfer--DUGOUT-CLUSTER_User-Web-Task-service" {
  availability_zone_rebalancing = "DISABLED"
  cluster                       = "DUGOUT-CLUSTER"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "1"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "300"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "user-container"
    container_port   = "8001"
    target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:726629337826:targetgroup/User-TG/31e8920beb393a4f"
  }

  name = "User-Web-Task-service"

  network_configuration {
    assign_public_ip = "true"
    security_groups  = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ECS-SG_sg-0dd82609d8f080a0f_id}"]
    subnets          = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-00258c4a6ac72c4ce_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0e08b5b05fdad2efc_id}"]
  }

  platform_version    = "LATEST"
  region              = "ap-northeast-2"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:ap-northeast-2:726629337826:task-definition/User-Web-Task:15"
}
