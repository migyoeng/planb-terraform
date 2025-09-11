# VPC 데이터 소스
data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = ["DugOut-VPC"]
  }
}

# Internet Gateway 데이터 소스
data "aws_internet_gateway" "main" {
  filter {
    name   = "attachment.vpc-id"
    values = [data.aws_vpc.main.id]
  }
}

# NAT Gateway 데이터 소스
data "aws_nat_gateway" "main" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.main.id]
  }
}

resource "aws_main_route_table_association" "tfer--vpc-0e043d21f57c0703e" {
  route_table_id = aws_route_table.tfer--rtb-067cd938aa6bfff61.id
  vpc_id         = data.aws_vpc.main.id
}