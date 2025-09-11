# VPC 데이터 소스
data "aws_vpc" "main" {
  default = true
}

# 가용 영역 데이터 소스
data "aws_availability_zones" "available" {
  state = "available"
}

# 각 AZ별 서브넷 데이터 소스
data "aws_subnet" "az_a" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.main.id]
  }
  
  filter {
    name   = "availability-zone"
    values = [data.aws_availability_zones.available.names[0]]
  }
}

data "aws_subnet" "az_b" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.main.id]
  }
  
  filter {
    name   = "availability-zone"
    values = [data.aws_availability_zones.available.names[1]]
  }
}

# Default VPC Subnet Group
resource "aws_db_subnet_group" "tfer--default-vpc-0953591a1f22f2f57" {
  name       = "default-vpc-0953591a1f22f2f57"
  subnet_ids = [
    data.aws_subnet.az_a.id,
    data.aws_subnet.az_b.id
  ]

  tags = {
    Name = "default-vpc-subnet-group"
  }
}

# Main VPC Subnet Group
resource "aws_db_subnet_group" "tfer--default-vpc-0e043d21f57c0703e" {
  name       = "default-vpc-0e043d21f57c0703e"
  subnet_ids = [
    data.aws_subnet.az_a.id,
    data.aws_subnet.az_b.id
  ]

  tags = {
    Name = "main-vpc-subnet-group"
  }
}

# DMS Subnet Group
resource "aws_db_subnet_group" "tfer--dms-subnet" {
  name       = "dms-subnet"
  subnet_ids = [
    data.aws_subnet.az_a.id,
    data.aws_subnet.az_b.id
  ]

  tags = {
    Name = "dms-subnet-group"
  }
}