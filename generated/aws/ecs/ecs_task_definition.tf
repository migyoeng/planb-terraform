resource "aws_ecs_task_definition" "tfer--task-definition-002F-Board-Migrate-Task" {
  container_definitions    = "[{\"command\":[\"/app/entrypoint-migrate.sh\"],\"environment\":[{\"name\":\"DJANGO_SETTINGS_MODULE\",\"value\":\"board_service.settings\"},{\"name\":\"PYTHONUNBUFFERED\",\"value\":\"1\"}],\"essential\":true,\"image\":\"726629337826.dkr.ecr.ap-northeast-2.amazonaws.com/plan-b/board-service:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/board-task-migrate\",\"awslogs-create-group\":\"true\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"}},\"mountPoints\":[],\"name\":\"board-migrate-container\",\"portMappings\":[],\"secrets\":[{\"name\":\"AWS_COGNITO_REGION\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:aws_region::\"},{\"name\":\"AWS_COGNITO_USER_POOL_CLIENT_ID\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:cognito_client_id::\"},{\"name\":\"AWS_COGNITO_USER_POOL_ID\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:cognito_user_pool_id::\"},{\"name\":\"DB_HOST\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/board/mysql-AcaHBw:host::\"},{\"name\":\"DB_NAME\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/board/mysql-AcaHBw:dbname::\"},{\"name\":\"DB_PASSWORD\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/board/mysql-AcaHBw:password::\"},{\"name\":\"DB_USER\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/board/mysql-AcaHBw:username::\"}],\"systemControls\":[],\"volumesFrom\":[]}]"
  cpu                      = "256"
  enable_fault_injection   = "false"
  execution_role_arn       = "arn:aws:iam::726629337826:role/DugoutTaskExecutionRole"
  family                   = "Board-Migrate-Task"
  memory                   = "512"
  network_mode             = "awsvpc"
  region                   = "ap-northeast-2"
  requires_compatibilities = ["FARGATE"]
  track_latest             = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-Board-Web-Task" {
  container_definitions    = "[{\"command\":[\"/app/entrypoint-web.sh\"],\"environment\":[{\"name\":\"DJANGO_SETTINGS_MODULE\",\"value\":\"board_service.settings\"},{\"name\":\"PYTHONUNBUFFERED\",\"value\":\"1\"}],\"essential\":true,\"healthCheck\":{\"command\":[\"CMD-SHELL\",\"curl -f http://127.0.0.1:8000/healthz || exit 1\"],\"interval\":30,\"retries\":3,\"startPeriod\":60,\"timeout\":5},\"image\":\"726629337826.dkr.ecr.ap-northeast-2.amazonaws.com/plan-b/board-service:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/board-task-web\",\"awslogs-create-group\":\"true\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"}},\"mountPoints\":[],\"name\":\"board-container\",\"portMappings\":[{\"containerPort\":8000,\"hostPort\":8000,\"protocol\":\"tcp\"}],\"secrets\":[{\"name\":\"AWS_COGNITO_REGION\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:aws_region::\"},{\"name\":\"AWS_COGNITO_USER_POOL_CLIENT_ID\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:cognito_client_id::\"},{\"name\":\"AWS_COGNITO_USER_POOL_ID\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:cognito_user_pool_id::\"},{\"name\":\"DB_HOST\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/board/mysql-AcaHBw:host::\"},{\"name\":\"DB_NAME\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/board/mysql-AcaHBw:dbname::\"},{\"name\":\"DB_PASSWORD\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/board/mysql-AcaHBw:password::\"},{\"name\":\"DB_USER\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/board/mysql-AcaHBw:username::\"}],\"systemControls\":[],\"volumesFrom\":[]}]"
  cpu                      = "512"
  enable_fault_injection   = "false"
  execution_role_arn       = "arn:aws:iam::726629337826:role/DugoutTaskExecutionRole"
  family                   = "Board-Web-Task"
  memory                   = "1024"
  network_mode             = "awsvpc"
  region                   = "ap-northeast-2"
  requires_compatibilities = ["FARGATE"]
  track_latest             = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-Event-Crawl-Task" {
  container_definitions    = "[{\"command\":[\"python manage.py crawl_match; python manage.py crawl_rank\"],\"entryPoint\":[\"sh\",\"-c\"],\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"726629337826.dkr.ecr.ap-northeast-2.amazonaws.com/plan-b/event-service:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/event-task-crawl\",\"awslogs-create-group\":\"true\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"event-service\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":8002,\"hostPort\":8002,\"name\":\"django\",\"protocol\":\"tcp\"}],\"secrets\":[{\"name\":\"DB_HOST\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/event/mysql-h5tbFx:host::\"},{\"name\":\"DB_NAME\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/event/mysql-h5tbFx:dbname::\"},{\"name\":\"DB_PASSWORD\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/event/mysql-h5tbFx:password::\"},{\"name\":\"DB_PORT\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/event/mysql-h5tbFx:port::\"},{\"name\":\"DB_USER\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/event/mysql-h5tbFx:username::\"}],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "512"
  enable_fault_injection   = "false"
  execution_role_arn       = "arn:aws:iam::726629337826:role/DugoutTaskExecutionRole"
  family                   = "Event-Crawl-Task"
  memory                   = "1024"
  network_mode             = "awsvpc"
  region                   = "ap-northeast-2"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  track_latest = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-Event-Migrate-Task" {
  container_definitions    = "[{\"command\":[\"/app/entrypoint-migrate.sh\"],\"environment\":[{\"name\":\"DJANGO_SETTINGS_MODULE\",\"value\":\"event_service.settings\"},{\"name\":\"PYTHONUNBUFFERED\",\"value\":\"1\"}],\"essential\":true,\"image\":\"726629337826.dkr.ecr.ap-northeast-2.amazonaws.com/plan-b/event-service:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/event-task-migrate\",\"awslogs-create-group\":\"true\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"}},\"mountPoints\":[],\"name\":\"event-migrate-container\",\"portMappings\":[],\"secrets\":[{\"name\":\"AWS_COGNITO_REGION\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:aws_region::\"},{\"name\":\"AWS_COGNITO_USER_POOL_CLIENT_ID\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:cognito_client_id::\"},{\"name\":\"AWS_COGNITO_USER_POOL_ID\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:cognito_user_pool_id::\"},{\"name\":\"DB_HOST\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/event/mysql-h5tbFx:host::\"},{\"name\":\"DB_NAME\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/event/mysql-h5tbFx:dbname::\"},{\"name\":\"DB_PASSWORD\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/event/mysql-h5tbFx:password::\"},{\"name\":\"DB_USER\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/event/mysql-h5tbFx:username::\"}],\"systemControls\":[],\"volumesFrom\":[]}]"
  cpu                      = "256"
  enable_fault_injection   = "false"
  execution_role_arn       = "arn:aws:iam::726629337826:role/DugoutTaskExecutionRole"
  family                   = "Event-Migrate-Task"
  memory                   = "512"
  network_mode             = "awsvpc"
  region                   = "ap-northeast-2"
  requires_compatibilities = ["FARGATE"]
  track_latest             = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-Event-Web-Task" {
  container_definitions    = "[{\"command\":[\"/app/entrypoint-web.sh\"],\"environment\":[{\"name\":\"DJANGO_SETTINGS_MODULE\",\"value\":\"event_service.settings\"},{\"name\":\"PYTHONUNBUFFERED\",\"value\":\"1\"}],\"essential\":true,\"healthCheck\":{\"command\":[\"CMD-SHELL\",\"curl -f http://127.0.0.1:8002/healthz || exit 1\"],\"interval\":30,\"retries\":3,\"startPeriod\":60,\"timeout\":5},\"image\":\"726629337826.dkr.ecr.ap-northeast-2.amazonaws.com/plan-b/event-service:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/event-task-web\",\"awslogs-create-group\":\"true\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"}},\"mountPoints\":[],\"name\":\"event-container\",\"portMappings\":[{\"containerPort\":8002,\"hostPort\":8002,\"protocol\":\"tcp\"}],\"secrets\":[{\"name\":\"AWS_COGNITO_REGION\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:aws_region::\"},{\"name\":\"AWS_COGNITO_USER_POOL_CLIENT_ID\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:cognito_client_id::\"},{\"name\":\"AWS_COGNITO_USER_POOL_ID\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:cognito_user_pool_id::\"},{\"name\":\"DB_HOST\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/event/mysql-h5tbFx:host::\"},{\"name\":\"DB_NAME\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/event/mysql-h5tbFx:dbname::\"},{\"name\":\"DB_PASSWORD\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/event/mysql-h5tbFx:password::\"},{\"name\":\"DB_USER\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/event/mysql-h5tbFx:username::\"}],\"systemControls\":[],\"volumesFrom\":[]}]"
  cpu                      = "512"
  enable_fault_injection   = "false"
  execution_role_arn       = "arn:aws:iam::726629337826:role/DugoutTaskExecutionRole"
  family                   = "Event-Web-Task"
  memory                   = "1024"
  network_mode             = "awsvpc"
  region                   = "ap-northeast-2"
  requires_compatibilities = ["FARGATE"]
  track_latest             = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-News-Crawl-Task" {
  container_definitions    = "[{\"command\":[\"python\",\"manage.py\",\"crawl_news\"],\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"726629337826.dkr.ecr.ap-northeast-2.amazonaws.com/plan-b/news-service:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\",\"awslogs-group\":\"/ecs/test-news-task-crawl\",\"awslogs-create-group\":\"true\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"news-service\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":8003,\"hostPort\":8003,\"name\":\"django\",\"protocol\":\"tcp\"}],\"secrets\":[{\"name\":\"DB_HOST\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:host::\"},{\"name\":\"DB_NAME\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:dbname::\"},{\"name\":\"DB_PASSWORD\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:password::\"},{\"name\":\"DB_PORT\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:port::\"},{\"name\":\"DB_USER\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:username::\"}],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "512"
  enable_fault_injection   = "false"
  execution_role_arn       = "arn:aws:iam::726629337826:role/DugoutTaskExecutionRole"
  family                   = "News-Crawl-Task"
  memory                   = "1024"
  network_mode             = "awsvpc"
  region                   = "ap-northeast-2"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  track_latest = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-News-Migrate-Task" {
  container_definitions    = "[{\"command\":[\"/app/entrypoint-migrate.sh\"],\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"726629337826.dkr.ecr.ap-northeast-2.amazonaws.com/plan-b/news-service:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/test-news-task-migrate\",\"awslogs-create-group\":\"true\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"news-service\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":8003,\"hostPort\":8003,\"name\":\"django\",\"protocol\":\"tcp\"}],\"secrets\":[{\"name\":\"DB_HOST\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:host::\"},{\"name\":\"DB_NAME\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:dbname::\"},{\"name\":\"DB_PASSWORD\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:password::\"},{\"name\":\"DB_PORT\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:port::\"},{\"name\":\"DB_USER\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:username::\"}],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "512"
  enable_fault_injection   = "false"
  execution_role_arn       = "arn:aws:iam::726629337826:role/DugoutTaskExecutionRole"
  family                   = "News-Migrate-Task"
  memory                   = "1024"
  network_mode             = "awsvpc"
  region                   = "ap-northeast-2"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  track_latest = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-News-Web-Task" {
  container_definitions    = "[{\"command\":[\"/app/entrypoint-web.sh\"],\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"726629337826.dkr.ecr.ap-northeast-2.amazonaws.com/plan-b/news-service:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/test-news-task-web\",\"awslogs-create-group\":\"true\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"news-service\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":8003,\"hostPort\":8003,\"name\":\"django\",\"protocol\":\"tcp\"}],\"secrets\":[{\"name\":\"AWS_REGION\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:aws_region::\"},{\"name\":\"AWS_USER_POOL_CLIENT_ID\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:cognito_client_id::\"},{\"name\":\"AWS_USER_POOL_ID\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:cognito_user_pool_id::\"},{\"name\":\"DB_HOST\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:host::\"},{\"name\":\"DB_NAME\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:dbname::\"},{\"name\":\"DB_PASSWORD\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:password::\"},{\"name\":\"DB_PORT\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:port::\"},{\"name\":\"DB_USER\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:username::\"}],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "512"
  enable_fault_injection   = "false"
  execution_role_arn       = "arn:aws:iam::726629337826:role/DugoutTaskExecutionRole"
  family                   = "News-Web-Task"
  memory                   = "1024"
  network_mode             = "awsvpc"
  region                   = "ap-northeast-2"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  track_latest = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-User-Inspect-Task" {
  container_definitions    = "[{\"command\":[\"python\",\"manage.py\",\"inspectdb\",\"event_schedule\",\"event_predict\",\"event_coupon\"],\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"726629337826.dkr.ecr.ap-northeast-2.amazonaws.com/plan-b/user-service:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/User-Inspect-Task\",\"awslogs-create-group\":\"true\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"user-service\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":8001,\"hostPort\":8001,\"name\":\"django\",\"protocol\":\"tcp\"}],\"secrets\":[{\"name\":\"AWS_REGION\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:aws_region::\"},{\"name\":\"AWS_USER_POOL_CLIENT_ID\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:cognito_client_id::\"},{\"name\":\"AWS_USER_POOL_ID\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:cognito_user_pool_id::\"},{\"name\":\"DB_HOST\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/user/mysql-vm-MALiev:host::\"},{\"name\":\"DB_NAME\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/user/mysql-vm-MALiev:dbname::\"},{\"name\":\"DB_PASSWORD\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/user/mysql-vm-MALiev:password::\"},{\"name\":\"DB_PORT\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/user/mysql-vm-MALiev:port::\"},{\"name\":\"DB_USER\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/user/mysql-vm-MALiev:username::\"}],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "512"
  enable_fault_injection   = "false"
  execution_role_arn       = "arn:aws:iam::726629337826:role/DugoutTaskExecutionRole"
  family                   = "User-Inspect-Task"
  memory                   = "1024"
  network_mode             = "awsvpc"
  region                   = "ap-northeast-2"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::726629337826:role/DugOutTaskRole"
  track_latest  = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-User-Migrate-Task" {
  container_definitions    = "[{\"command\":[\"/app/entrypoint-migrate.sh\"],\"environment\":[{\"name\":\"DJANGO_SETTINGS_MODULE\",\"value\":\"demo_user.settings\"},{\"name\":\"PYTHONUNBUFFERED\",\"value\":\"1\"}],\"essential\":true,\"image\":\"726629337826.dkr.ecr.ap-northeast-2.amazonaws.com/plan-b/user-service:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\",\"awslogs-group\":\"/ecs/user-task-migrate\"}},\"mountPoints\":[],\"name\":\"user-migrate-container\",\"portMappings\":[],\"secrets\":[{\"name\":\"AWS_COGNITO_REGION\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:aws_region::\"},{\"name\":\"AWS_COGNITO_USER_POOL_CLIENT_ID\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:cognito_client_id::\"},{\"name\":\"AWS_COGNITO_USER_POOL_ID\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:cognito_user_pool_id::\"},{\"name\":\"DB_HOST\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/user/mysql-vm-MALiev:host::\"},{\"name\":\"DB_NAME\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/user/mysql-vm-MALiev:dbname::\"},{\"name\":\"DB_PASSWORD\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/user/mysql-vm-MALiev:password::\"},{\"name\":\"DB_USER\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/user/mysql-vm-MALiev:username::\"}],\"systemControls\":[],\"volumesFrom\":[]}]"
  cpu                      = "256"
  enable_fault_injection   = "false"
  execution_role_arn       = "arn:aws:iam::726629337826:role/DugoutTaskExecutionRole"
  family                   = "User-Migrate-Task"
  memory                   = "512"
  network_mode             = "awsvpc"
  region                   = "ap-northeast-2"
  requires_compatibilities = ["FARGATE"]
  task_role_arn            = "arn:aws:iam::726629337826:role/DugOutTaskRole"
  track_latest             = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-User-Web-Task" {
  container_definitions    = "[{\"command\":[\"/app/entrypoint-web.sh\"],\"environment\":[{\"name\":\"DJANGO_SETTINGS_MODULE\",\"value\":\"demo_user.settings\"},{\"name\":\"PYTHONUNBUFFERED\",\"value\":\"1\"}],\"essential\":true,\"healthCheck\":{\"command\":[\"CMD-SHELL\",\"curl -f http://127.0.0.1:8001/healthz || exit 1\"],\"interval\":30,\"retries\":3,\"startPeriod\":60,\"timeout\":5},\"image\":\"726629337826.dkr.ecr.ap-northeast-2.amazonaws.com/plan-b/user-service:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/user-task-web\",\"awslogs-create-group\":\"true\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"}},\"mountPoints\":[],\"name\":\"user-container\",\"portMappings\":[{\"containerPort\":8001,\"hostPort\":8001,\"protocol\":\"tcp\"}],\"secrets\":[{\"name\":\"AWS_COGNITO_REGION\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:aws_region::\"},{\"name\":\"AWS_COGNITO_USER_POOL_CLIENT_ID\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:cognito_client_id::\"},{\"name\":\"AWS_COGNITO_USER_POOL_ID\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/cognito-config-WmvPts:cognito_user_pool_id::\"},{\"name\":\"DB_HOST\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/user/mysql-vm-MALiev:host::\"},{\"name\":\"DB_NAME\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/user/mysql-vm-MALiev:dbname::\"},{\"name\":\"DB_PASSWORD\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/user/mysql-vm-MALiev:password::\"},{\"name\":\"DB_USER\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/user/mysql-vm-MALiev:username::\"}],\"systemControls\":[],\"volumesFrom\":[]}]"
  cpu                      = "512"
  enable_fault_injection   = "false"
  execution_role_arn       = "arn:aws:iam::726629337826:role/DugoutTaskExecutionRole"
  family                   = "User-Web-Task"
  memory                   = "1024"
  network_mode             = "awsvpc"
  region                   = "ap-northeast-2"
  requires_compatibilities = ["FARGATE"]
  task_role_arn            = "arn:aws:iam::726629337826:role/DugOutTaskRole"
  track_latest             = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-news-service-web" {
  container_definitions    = "[{\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"healthCheck\":{\"command\":[\"CMD-SHELL\",\"curl -f http://127.0.0.1:8003/healthz || exit 1\"],\"interval\":30,\"retries\":3,\"startPeriod\":60,\"timeout\":5},\"image\":\"726629337826.dkr.ecr.ap-northeast-2.amazonaws.com/plan-b/news-service:11c1222ed5e5e37a5fd79383f894a74f02bdc526\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/news-service-web\",\"awslogs-create-group\":\"true\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"news-web\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":8003,\"hostPort\":8003,\"name\":\"news-web-8003-tcp\",\"protocol\":\"tcp\"}],\"secrets\":[{\"name\":\"DB_HOST\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:host::\"},{\"name\":\"DB_NAME\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:dbname::\"},{\"name\":\"DB_PASSWORD\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:password::\"},{\"name\":\"DB_PORT\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:port::\"},{\"name\":\"DB_USER\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mysql-ZlOMLp:username::\"}],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[],\"workingDirectory\":\"/app\"}]"
  cpu                      = "1024"
  enable_fault_injection   = "false"
  execution_role_arn       = "arn:aws:iam::726629337826:role/DugoutTaskExecutionRole"
  family                   = "news-service-web"
  memory                   = "3072"
  network_mode             = "awsvpc"
  region                   = "ap-northeast-2"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::726629337826:role/ecsTaskExecutionRole-news"
  track_latest  = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-news-task-crawl" {
  container_definitions    = "[{\"command\":[\"python\",\"manage.py\",\"crawl_news\"],\"environment\":[],\"essential\":true,\"image\":\"726629337826.dkr.ecr.ap-northeast-2.amazonaws.com/plan-b/news-service:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\",\"awslogs-group\":\"/ecs/news-task-crawl\",\"awslogs-create-group\":\"true\"}},\"mountPoints\":[],\"name\":\"news-crawl\",\"portMappings\":[],\"secrets\":[{\"name\":\"DB_HOST\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mariadb-HvZT6U:host::\"},{\"name\":\"DB_NAME\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mariadb-HvZT6U:name::\"},{\"name\":\"DB_PASSWORD\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mariadb-HvZT6U:password::\"},{\"name\":\"DB_PORT\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mariadb-HvZT6U:port::\"},{\"name\":\"DB_USER\",\"valueFrom\":\"arn:aws:secretsmanager:ap-northeast-2:726629337826:secret:prod/news/mariadb-HvZT6U:username::\"}],\"systemControls\":[],\"volumesFrom\":[],\"workingDirectory\":\"/app\"}]"
  cpu                      = "1024"
  enable_fault_injection   = "false"
  execution_role_arn       = "arn:aws:iam::726629337826:role/ecsTaskExecutionRole"
  family                   = "news-task-crawl"
  memory                   = "4096"
  network_mode             = "awsvpc"
  region                   = "ap-northeast-2"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::726629337826:role/ecsTaskExecutionRole-news"
  track_latest  = "false"
}
