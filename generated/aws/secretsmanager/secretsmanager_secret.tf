resource "aws_secretsmanager_secret" "tfer--prod-002F-board-002F-mysql" {
  description = "Board 서비스에 연결할 board_db 설정 값"
  name        = "prod/board/mysql-tf"
}

resource "aws_secretsmanager_secret" "tfer--prod-002F-cognito-config" {
  description = "Dugout Cognito User pool 및 client 설정 정보"
  name        = "prod/cognito-config-tf"
}

resource "aws_secretsmanager_secret" "tfer--prod-002F-event-002F-mysql" {
  description = "Event 서비스에 연결할 event_db 설정 값"
  name        = "prod/event/mysql-tf"
}

resource "aws_secretsmanager_secret" "tfer--prod-002F-news-002F-mysql" {
  description = "News 서비스에 연결할 news_db 설정 값"
  name        = "prod/news/mysql-tf"
}

resource "aws_secretsmanager_secret" "tfer--prod-002F-user-002F-mysql-vm" {
  description = "User 서비스에 연결할 데이터베이스 설정 값"
  name        = "prod/user/mysql-vm"
}
