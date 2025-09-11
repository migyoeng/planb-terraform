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

output "aws_db_subnet_group_tfer--default-vpc-0953591a1f22f2f57_id" {
  value = aws_db_subnet_group.tfer--default-vpc-0953591a1f22f2f57.id
}

output "aws_db_subnet_group_tfer--default-vpc-0e043d21f57c0703e_id" {
  value = aws_db_subnet_group.tfer--default-vpc-0e043d21f57c0703e.id
}

output "aws_db_subnet_group_tfer--dms-subnet_id" {
  value = aws_db_subnet_group.tfer--dms-subnet.id
}