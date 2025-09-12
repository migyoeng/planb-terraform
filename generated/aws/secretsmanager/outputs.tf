output "aws_secretsmanager_secret_tfer--prod-002F-board-002F-mysql_id" {
  value = "${aws_secretsmanager_secret.tfer--prod-002F-board-002F-mysql.id}"
}

output "aws_secretsmanager_secret_tfer--prod-002F-cognito-config_id" {
  value = "${aws_secretsmanager_secret.tfer--prod-002F-cognito-config.id}"
}

output "aws_secretsmanager_secret_tfer--prod-002F-event-002F-mysql_id" {
  value = "${aws_secretsmanager_secret.tfer--prod-002F-event-002F-mysql.id}"
}

output "aws_secretsmanager_secret_tfer--prod-002F-news-002F-mysql_id" {
  value = "${aws_secretsmanager_secret.tfer--prod-002F-news-002F-mysql.id}"
}

# prod/user/mysql-vm secret은 주석 처리되어 있으므로 제거
