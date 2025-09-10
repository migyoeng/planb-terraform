resource "aws_docdb_subnet_group" "tfer--default-vpc-0953591a1f22f2f57" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-0953591a1f22f2f57"
  region      = "ap-northeast-2"
  subnet_ids  = ["subnet-0446fcbe570dc7fe4", "subnet-066a9b89657079249", "subnet-0b93274e9330949e4", "subnet-0dc7b0a0dbc186058", "subnet-0de48698782eb5007", "subnet-0f38a0e926790bbf5"]
}

resource "aws_docdb_subnet_group" "tfer--default-vpc-0e043d21f57c0703e" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-0e043d21f57c0703e"
  region      = "ap-northeast-2"
  subnet_ids  = ["subnet-00258c4a6ac72c4ce", "subnet-02ef09cd4e75ad48e", "subnet-07e1138aac7e95c7c", "subnet-0b9a0280aa66167fe", "subnet-0dcde6507114a320f", "subnet-0e08b5b05fdad2efc"]
}

resource "aws_docdb_subnet_group" "tfer--dms-subnet" {
  description = "dms-subnet"
  name        = "dms-subnet"
  region      = "ap-northeast-2"
  subnet_ids  = ["subnet-00258c4a6ac72c4ce", "subnet-0e08b5b05fdad2efc"]
}
