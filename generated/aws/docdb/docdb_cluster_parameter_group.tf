resource "aws_docdb_cluster_parameter_group" "tfer--default-002E-aurora-mysql8-002E-0" {
  description = "Default cluster parameter group for aurora-mysql8.0"
  family      = "aurora-mysql8.0"
  name        = "default.aurora-mysql8.0"
  region      = "ap-northeast-2"
}

resource "aws_docdb_cluster_parameter_group" "tfer--default-002E-aurora-postgresql16" {
  description = "Default cluster parameter group for aurora-postgresql16"
  family      = "aurora-postgresql16"
  name        = "default.aurora-postgresql16"
  region      = "ap-northeast-2"
}
