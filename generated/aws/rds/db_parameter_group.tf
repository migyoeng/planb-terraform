resource "aws_db_parameter_group" "tfer--dms-pg" {
  description = "dms-pg"
  family      = "mysql8.0"
  name        = "dms-pg"

  parameter {
    apply_method = "immediate"
    name         = "binlog_format"
    value        = "ROW"
  }

  parameter {
    apply_method = "immediate"
    name         = "binlog_row_image"
    value        = "full"
  }

  parameter {
    apply_method = "immediate"
    name         = "interactive_timeout"
    value        = "28800"
  }

  parameter {
    apply_method = "immediate"
    name         = "net_read_timeout"
    value        = "3600"
  }

  parameter {
    apply_method = "immediate"
    name         = "net_write_timeout"
    value        = "3600"
  }

  parameter {
    apply_method = "immediate"
    name         = "sql_mode"
    value        = "STRICT_TRANS_TABLES"
  }

  parameter {
    apply_method = "immediate"
    name         = "wait_timeout"
    value        = "28800"
  }

  region       = "ap-northeast-2"
  skip_destroy = "false"
}

resource "aws_db_parameter_group" "tfer--dugout-pg" {
  description = "sql_mode setting"
  family      = "mysql8.0"
  name        = "dugout-pg"

  parameter {
    apply_method = "immediate"
    name         = "sql_mode"
    value        = "STRICT_TRANS_TABLES"
  }

  region       = "ap-northeast-2"
  skip_destroy = "false"
}
