output "aws_db_instance_tfer--board-db_id" {
  value = aws_db_instance.tfer--board-db.id
}

output "aws_db_instance_tfer--event-db_id" {
  value = aws_db_instance.tfer--event-db.id
}

output "aws_db_instance_tfer--news-db_id" {
  value = aws_db_instance.tfer--news-db.id
}

output "aws_db_parameter_group_tfer--dms-pg_id" {
  value = aws_db_parameter_group.tfer--dms-pg.id
}

output "aws_db_parameter_group_tfer--dugout-pg_id" {
  value = aws_db_parameter_group.tfer--dugout-pg.id
}

# DB Snapshot outputs 제거 (리소스가 삭제됨)
# output "aws_db_snapshot_tfer--rds-003A-event-db-2025-09-02-08-29_id" {
#   value = aws_db_snapshot.tfer--rds-003A-event-db-2025-09-02-08-29.id
# }

# output "aws_db_snapshot_tfer--rds-003A-event-db-2025-09-03-23-08_id" {
#   value = aws_db_snapshot.tfer--rds-003A-event-db-2025-09-03-23-08.id
# }

output "aws_db_subnet_group_main_rds_subnet_group_id" {
  value = aws_db_subnet_group.main_rds_subnet_group.id
}

output "aws_db_subnet_group_main_rds_subnet_group_name" {
  value = aws_db_subnet_group.main_rds_subnet_group.name
}