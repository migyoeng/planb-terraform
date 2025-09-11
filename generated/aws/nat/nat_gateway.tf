# VPC 데이터 소스
data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = ["DugOut-VPC"]
  }
}

# 모든 서브넷 찾기
data "aws_subnets" "all" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.main.id]
  }
}

# 첫 번째 서브넷 사용 (Public 서브넷이어야 함)
data "aws_subnet" "public" {
  id = data.aws_subnets.all.ids[0]
}

# EIP 데이터 소스
data "aws_eip" "existing" {
  filter {
    name   = "allocation-id"
    values = ["eipalloc-0162dace52f5a9647"]
  }
}

resource "aws_nat_gateway" "tfer--nat-0d1d1ba9ec02d3aa6" {
  allocation_id = data.aws_eip.existing.id
  subnet_id     = data.aws_subnet.public.id

  tags = {
    Name = "DugOut-NAT"
  }
}