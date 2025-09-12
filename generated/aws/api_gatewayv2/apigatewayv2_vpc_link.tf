# VPC 데이터 소스
data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = ["DugOut-VPC"]
  }
}

# 서브넷 데이터 소스
data "aws_subnet" "pri_subnet_a" {
  filter {
    name   = "tag:Name"
    values = ["PRI-subnet-a"]
  }
}

data "aws_subnet" "pri_subnet_c" {
  filter {
    name   = "tag:Name"
    values = ["PRI-subnet-c"]
  }
}

# 기본 보안 그룹 데이터 소스
data "aws_security_group" "default" {
  filter {
    name   = "group-name"
    values = ["default"]
  }
  vpc_id = data.aws_vpc.main.id
}

resource "aws_apigatewayv2_vpc_link" "info_final" {
  name               = "info-final"
  security_group_ids = [data.aws_security_group.default.id]
  subnet_ids         = [
    data.aws_subnet.pri_subnet_a.id,
    data.aws_subnet.pri_subnet_c.id
  ]

  tags = {
    Name = "Info Final VPC Link"
  }
}
