# VPC 데이터 소스
data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = ["DugOut-VPC"]
  }
}

# 서브넷 데이터 소스
data "aws_subnets" "private" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.main.id]
  }
  
  filter {
    name   = "tag:Name"
    values = ["*private*"]
  }
}

# Security Group 데이터 소스
data "aws_security_group" "vpc_endpoint" {
  filter {
    name   = "group-name"
    values = ["VPC-EP-SG"]
  }
  
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.main.id]
  }
}

resource "aws_vpc_endpoint" "tfer--vpce-0f7e3a4b10d87e195" {
  vpc_id              = data.aws_vpc.main.id
  service_name        = "com.amazonaws.ap-northeast-2.secretsmanager"
  vpc_endpoint_type   = "Interface"
  subnet_ids          = data.aws_subnets.private.ids
  security_group_ids  = [data.aws_security_group.vpc_endpoint.id]
  private_dns_enabled = true

  policy = jsonencode({
    Statement = [
      {
        Action   = "*"
        Effect   = "Allow"
        Principal = "*"
        Resource = "*"
      }
    ]
  })

  dns_options {
    dns_record_ip_type                             = "ipv4"
    private_dns_only_for_inbound_resolver_endpoint = false
  }

  tags = {
    Name = "DugOut-VPC-Endpoint"
  }
}