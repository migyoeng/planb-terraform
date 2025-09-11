# RDS용 서브넷 데이터 소스 (기존 서브넷 사용)
data "aws_subnet" "rds_subnet_a" {
  filter {
    name   = "tag:Name"
    values = ["RDS-subnet-a"]
  }
}

data "aws_subnet" "rds_subnet_c" {
  filter {
    name   = "tag:Name"
    values = ["RDS-subnet-c"]
  }
}

# 새로운 이름으로만 DB Subnet Group 생성 (기존 것과 완전히 분리)
resource "aws_db_subnet_group" "main_rds_subnet_group" {
  name       = "main-rds-subnet-group"
  subnet_ids = [
    data.aws_subnet.rds_subnet_a.id,
    data.aws_subnet.rds_subnet_c.id
  ]

  tags = {
    Name = "main-rds-subnet-group"
  }
}

# 기존 이름을 새로운 이름으로 변경하여 충돌 방지
resource "aws_db_subnet_group" "tfer--default-vpc-0953591a1f22f2f57" {
  name       = "default-vpc-0953591a1f22f2f57-new"
  subnet_ids = [
    data.aws_subnet.rds_subnet_a.id,
    data.aws_subnet.rds_subnet_c.id
  ]

  tags = {
    Name = "default-vpc-subnet-group-new"
  }
}

resource "aws_db_subnet_group" "tfer--default-vpc-0e043d21f57c0703e" {
  name       = "default-vpc-0e043d21f57c0703e-new"
  subnet_ids = [
    data.aws_subnet.rds_subnet_a.id,
    data.aws_subnet.rds_subnet_c.id
  ]

  tags = {
    Name = "main-vpc-subnet-group-new"
  }
}

resource "aws_db_subnet_group" "tfer--dms-subnet" {
  name       = "dms-subnet-new"
  subnet_ids = [
    data.aws_subnet.rds_subnet_a.id,
    data.aws_subnet.rds_subnet_c.id
  ]

  tags = {
    Name = "dms-subnet-group-new"
  }
}