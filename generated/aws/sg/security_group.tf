# VPC 데이터 소스
data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = ["DugOut-VPC"]
  }
}

# ALB Security Group
resource "aws_security_group" "tfer--ALB-SG_sg-04de431b39e807229" {
  name        = "ALB-SG"
  description = "Inbound 80, 443 for User"
  vpc_id      = data.aws_vpc.main.id

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 443
    protocol    = "tcp"
    to_port     = 443
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 8004
    protocol    = "tcp"
    to_port     = 8004
  }

  tags = {
    Name = "ALB-SG"
  }
}

# DMS Security Group
resource "aws_security_group" "tfer--DMS-SG_sg-07c55b43e8f90cfe2" {
  name        = "DMS-SG"
  description = "DMS Security Group"
  vpc_id      = data.aws_vpc.main.id

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  tags = {
    Name = "DMS-SG"
  }
}

# ECS Security Group
resource "aws_security_group" "tfer--ECS-SG_sg-0dd82609d8f080a0f" {
  name        = "ECS-SG"
  description = "Inbound 8000-8004 for ALB"
  vpc_id      = data.aws_vpc.main.id

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    from_port       = 8000
    protocol        = "tcp"
    security_groups = [aws_security_group.tfer--ALB-SG_sg-04de431b39e807229.id]
    to_port         = 8000
  }

  ingress {
    from_port       = 8001
    protocol        = "tcp"
    security_groups = [aws_security_group.tfer--ALB-SG_sg-04de431b39e807229.id]
    to_port         = 8001
  }

  ingress {
    from_port       = 8002
    protocol        = "tcp"
    security_groups = [aws_security_group.tfer--ALB-SG_sg-04de431b39e807229.id]
    to_port         = 8002
  }

  ingress {
    from_port       = 8003
    protocol        = "tcp"
    security_groups = [aws_security_group.tfer--ALB-SG_sg-04de431b39e807229.id]
    to_port         = 8003
  }

  ingress {
    from_port       = 8004
    protocol        = "tcp"
    security_groups = [aws_security_group.tfer--ALB-SG_sg-04de431b39e807229.id]
    to_port         = 8004
  }

  tags = {
    Name = "ECS-SG"
  }
}

# RDS Security Group
resource "aws_security_group" "tfer--RDS-SG_sg-09dcb1de62d658b08" {
  name        = "RDS-SG"
  description = "Inbound 3306 for ECS"
  vpc_id      = data.aws_vpc.main.id

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    from_port       = 3306
    protocol        = "tcp"
    security_groups = [
      aws_security_group.tfer--DMS-SG_sg-07c55b43e8f90cfe2.id,
      aws_security_group.tfer--ECS-SG_sg-0dd82609d8f080a0f.id
    ]
    to_port = 3306
  }

  tags = {
    Name = "RDS-SG"
  }
}

# VPC Endpoint Security Group
resource "aws_security_group" "tfer--VPC-EP-SG_sg-0fb55cc0d37e47a52" {
  name        = "VPC-EP-SG"
  description = "Inbound 443 for ECS"
  vpc_id      = data.aws_vpc.main.id

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    from_port       = 443
    protocol        = "tcp"
    security_groups = [aws_security_group.tfer--ECS-SG_sg-0dd82609d8f080a0f.id]
    to_port         = 443
  }

  tags = {
    Name = "VPC-EP-SG"
  }
}

# VPC Link Security Group
resource "aws_security_group" "tfer--launch-wizard-2_sg-05a3d749df6639fd1" {
  name        = "VPC-link-SG"
  description = "VPC Link Security Group"
  vpc_id      = data.aws_vpc.main.id

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  tags = {
    Name = "VPC-link-SG"
  }
}