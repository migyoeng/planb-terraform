resource "aws_db_snapshot" "tfer--rds-003A-event-db-2025-09-02-08-29" {
  db_instance_identifier = "event-db"
  db_snapshot_identifier = "rds:event-db-2025-09-02-08-29"
  region                 = "ap-northeast-2"
}

resource "aws_db_snapshot" "tfer--rds-003A-event-db-2025-09-03-23-08" {
  db_instance_identifier = "event-db"
  db_snapshot_identifier = "rds:event-db-2025-09-03-23-08"
  region                 = "ap-northeast-2"
}
