output "aws_docdb_cluster_parameter_group_tfer--default-002E-aurora-mysql8-002E-0_id" {
  value = "${aws_docdb_cluster_parameter_group.tfer--default-002E-aurora-mysql8-002E-0.id}"
}

output "aws_docdb_cluster_parameter_group_tfer--default-002E-aurora-postgresql16_id" {
  value = "${aws_docdb_cluster_parameter_group.tfer--default-002E-aurora-postgresql16.id}"
}

output "aws_docdb_subnet_group_tfer--default-vpc-0953591a1f22f2f57_id" {
  value = "${aws_docdb_subnet_group.tfer--default-vpc-0953591a1f22f2f57.id}"
}

output "aws_docdb_subnet_group_tfer--default-vpc-0e043d21f57c0703e_id" {
  value = "${aws_docdb_subnet_group.tfer--default-vpc-0e043d21f57c0703e.id}"
}

output "aws_docdb_subnet_group_tfer--dms-subnet_id" {
  value = "${aws_docdb_subnet_group.tfer--dms-subnet.id}"
}
