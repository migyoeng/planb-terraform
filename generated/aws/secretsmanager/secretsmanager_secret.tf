# RDS Remote State 데이터 소스
data "terraform_remote_state" "rds" {
  backend = "local"

  config = {
    path = "../../../generated/aws/rds/terraform.tfstate"
  }
}

# Cognito Remote State 데이터 소스
data "terraform_remote_state" "cognito" {
  backend = "local"

  config = {
    path = "../../../generated/aws/cognito/terraform.tfstate"
  }
}

resource "aws_secretsmanager_secret" "tfer--prod-002F-board-002F-mysql" {
  description = "Board 서비스에 연결할 board_db 설정 값"
  name        = "prod/board/mysql-tf"
}

resource "aws_secretsmanager_secret_version" "tfer--prod-002F-board-002F-mysql" {
  secret_id     = aws_secretsmanager_secret.tfer--prod-002F-board-002F-mysql.id
  secret_string = jsonencode({
    host     = data.terraform_remote_state.rds.outputs.aws_db_instance_tfer--board-db_endpoint
    user     = data.terraform_remote_state.rds.outputs.aws_db_instance_tfer--board-db_username
    password = data.terraform_remote_state.rds.outputs.aws_db_instance_tfer--board-db_password
    port     = data.terraform_remote_state.rds.outputs.aws_db_instance_tfer--board-db_port
    database = data.terraform_remote_state.rds.outputs.aws_db_instance_tfer--board-db_db_name
  })
}

resource "aws_secretsmanager_secret" "tfer--prod-002F-cognito-config" {
  description = "Dugout Cognito User pool 및 client 설정 정보"
  name        = "prod/cognito-config-tf"
}

resource "aws_secretsmanager_secret_version" "tfer--prod-002F-cognito-config" {
  secret_id     = aws_secretsmanager_secret.tfer--prod-002F-cognito-config.id
  secret_string = jsonencode({
    aws_region            = "ap-northeast-2"
    aws_user_pool_id      = data.terraform_remote_state.cognito.outputs.aws_cognito_user_pool_tfer--User-0020-pool-0020---0020-lrmgzt_ap-northeast-2_KYxl8SX2a_id
    aws_user_pool_client_id = data.terraform_remote_state.cognito.outputs.aws_cognito_user_pool_client_tfer--dugout-main_3a58ij7t5e5va7qjkfdmjsghq_id
  })
}

resource "aws_secretsmanager_secret" "tfer--prod-002F-event-002F-mysql" {
  description = "Event 서비스에 연결할 event_db 설정 값"
  name        = "prod/event/mysql-tf"
}

resource "aws_secretsmanager_secret_version" "tfer--prod-002F-event-002F-mysql" {
  secret_id     = aws_secretsmanager_secret.tfer--prod-002F-event-002F-mysql.id
  secret_string = jsonencode({
    host     = data.terraform_remote_state.rds.outputs.aws_db_instance_tfer--event-db_endpoint
    user     = data.terraform_remote_state.rds.outputs.aws_db_instance_tfer--event-db_username
    password = data.terraform_remote_state.rds.outputs.aws_db_instance_tfer--event-db_password
    port     = data.terraform_remote_state.rds.outputs.aws_db_instance_tfer--event-db_port
    database = data.terraform_remote_state.rds.outputs.aws_db_instance_tfer--event-db_db_name
  })
}

resource "aws_secretsmanager_secret" "tfer--prod-002F-news-002F-mysql" {
  description = "News 서비스에 연결할 news_db 설정 값"
  name        = "prod/news/mysql-tf"
}

resource "aws_secretsmanager_secret_version" "tfer--prod-002F-news-002F-mysql" {
  secret_id     = aws_secretsmanager_secret.tfer--prod-002F-news-002F-mysql.id
  secret_string = jsonencode({
    host     = data.terraform_remote_state.rds.outputs.aws_db_instance_tfer--news-db_endpoint
    user     = data.terraform_remote_state.rds.outputs.aws_db_instance_tfer--news-db_username
    password = data.terraform_remote_state.rds.outputs.aws_db_instance_tfer--news-db_password
    port     = data.terraform_remote_state.rds.outputs.aws_db_instance_tfer--news-db_port
    database = data.terraform_remote_state.rds.outputs.aws_db_instance_tfer--news-db_db_name
  })
}

resource "aws_secretsmanager_secret" "tfer--prod-002F-user-002F-mysql-vm" {
  description = "User 서비스에 연결할 데이터베이스 설정 값"
  name        = "prod/user/mysql-vm"
}

resource "aws_secretsmanager_secret_version" "tfer--prod-002F-user-002F-mysql-vm" {
  secret_id     = aws_secretsmanager_secret.tfer--prod-002F-user-002F-mysql-vm.id
  secret_string = jsonencode({
    host     = "192.168.20.180"
    user     = "ecs_svc"
    password = "Qwert12345!?"
    port     = 3306
  })
}