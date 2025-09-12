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

# 새로운 DB Subnet Group 생성 (간단한 이름)
resource "aws_db_subnet_group" "main_rds_subnet_group" {
  name       = "dugout-rds-subnet-group"
  subnet_ids = [
    data.aws_subnet.rds_subnet_a.id,
    data.aws_subnet.rds_subnet_c.id
  ]

  tags = {
    Name = "DugOut-RDS-Subnet-Group"
  }
}