# VPC 데이터 소스 추가
data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = ["DugOut-VPC"]
  }
}

resource "aws_internet_gateway" "tfer--igw-0de2b214e06889fc8" {
  vpc_id = data.aws_vpc.main.id

  tags = {
    Name = "DugOut-IGW"
  }
}