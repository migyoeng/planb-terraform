resource "aws_security_group" "tfer--ALB-SG_sg-04de431b39e807229" {
  description = "Inbound 80, 443 for User"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "8004"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8004"
  }

  name   = "ALB-SG"
  region = "ap-northeast-2"

  tags = {
    Name = "ALB-SG"
  }

  tags_all = {
    Name = "ALB-SG"
  }

  vpc_id = "vpc-0e043d21f57c0703e"
}

resource "aws_security_group" "tfer--DMS-SG_sg-07c55b43e8f90cfe2" {
  description = "DMS-SG"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "443"
    protocol  = "tcp"
    self      = "true"
    to_port   = "443"
  }

  name   = "DMS-SG"
  region = "ap-northeast-2"

  tags = {
    Name = "DMS-SG"
  }

  tags_all = {
    Name = "DMS-SG"
  }

  vpc_id = "vpc-0e043d21f57c0703e"
}

resource "aws_security_group" "tfer--ECS-SG_sg-0dd82609d8f080a0f" {
  description = "Inbound 8000-8004 for ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    from_port       = "8000"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ALB-SG_sg-04de431b39e807229_id}"]
    self            = "false"
    to_port         = "8000"
  }

  ingress {
    from_port       = "8001"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ALB-SG_sg-04de431b39e807229_id}"]
    self            = "false"
    to_port         = "8001"
  }

  ingress {
    from_port       = "8002"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ALB-SG_sg-04de431b39e807229_id}"]
    self            = "false"
    to_port         = "8002"
  }

  ingress {
    from_port       = "8003"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ALB-SG_sg-04de431b39e807229_id}"]
    self            = "false"
    to_port         = "8003"
  }

  ingress {
    from_port       = "8004"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ALB-SG_sg-04de431b39e807229_id}"]
    self            = "false"
    to_port         = "8004"
  }

  name   = "ECS-SG"
  region = "ap-northeast-2"

  tags = {
    Name = "ECS-SG"
  }

  tags_all = {
    Name = "ECS-SG"
  }

  vpc_id = "vpc-0e043d21f57c0703e"
}

resource "aws_security_group" "tfer--RDS-SG_sg-09dcb1de62d658b08" {
  description = "Inbound 3306 for ECS"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port       = "3306"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--DMS-SG_sg-07c55b43e8f90cfe2_id}", "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ECS-SG_sg-0dd82609d8f080a0f_id}", "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--launch-wizard-2_sg-05a3d749df6639fd1_id}"]
    self            = "false"
    to_port         = "3306"
  }

  name   = "RDS-SG"
  region = "ap-northeast-2"

  tags = {
    Name = "RDS-SG"
  }

  tags_all = {
    Name = "RDS-SG"
  }

  vpc_id = "vpc-0e043d21f57c0703e"
}

resource "aws_security_group" "tfer--VPC-EP-SG_sg-0fb55cc0d37e47a52" {
  description = "Inbound 443 for ECS"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port       = "443"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ECS-SG_sg-0dd82609d8f080a0f_id}"]
    self            = "false"
    to_port         = "443"
  }

  name   = "VPC-EP-SG"
  region = "ap-northeast-2"

  tags = {
    Name = "VPC-EP-SG"
  }

  tags_all = {
    Name = "VPC-EP-SG"
  }

  vpc_id = "vpc-0e043d21f57c0703e"
}

resource "aws_security_group" "tfer--default_sg-0256328110b56a994" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  region = "ap-northeast-2"
  vpc_id = "vpc-0e043d21f57c0703e"
}

resource "aws_security_group" "tfer--default_sg-05883384f9be33b25" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  region = "ap-northeast-2"

  tags = {
    Name = "default"
  }

  tags_all = {
    Name = "default"
  }

  vpc_id = "vpc-06e9ddc7b84b869d1"
}

resource "aws_security_group" "tfer--launch-wizard-2_sg-05a3d749df6639fd1" {
  description = "launch-wizard-2 created 2025-09-01T01:43:45.200Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["106.248.40.226/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["192.168.20.0/24", "192.168.30.0/24", "192.168.40.0/24"]
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  name   = "launch-wizard-2"
  region = "ap-northeast-2"
  vpc_id = "vpc-0e043d21f57c0703e"
}
