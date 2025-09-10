resource "aws_route_table" "tfer--rtb-02e2b0e7d5ba0d441" {
  propagating_vgws = ["vgw-09e39a5c96cc9aed4"]
  region           = "ap-northeast-2"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0de2b214e06889fc8"
  }

  tags = {
    Name = "PUB-RT"
  }

  tags_all = {
    Name = "PUB-RT"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e043d21f57c0703e_id}"
}

resource "aws_route_table" "tfer--rtb-03a439676c94e13f9" {
  propagating_vgws = ["vgw-09e39a5c96cc9aed4"]
  region           = "ap-northeast-2"

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-0d1d1ba9ec02d3aa6"
  }

  route {
    cidr_block = "192.168.20.0/24"
    gateway_id = "vgw-09e39a5c96cc9aed4"
  }

  route {
    cidr_block = "192.168.30.0/24"
    gateway_id = "vgw-09e39a5c96cc9aed4"
  }

  route {
    cidr_block = "192.168.40.0/24"
    gateway_id = "vgw-09e39a5c96cc9aed4"
  }

  tags = {
    Name = "PRI-RT"
  }

  tags_all = {
    Name = "PRI-RT"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e043d21f57c0703e_id}"
}

resource "aws_route_table" "tfer--rtb-067cd938aa6bfff61" {
  region = "ap-northeast-2"
  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e043d21f57c0703e_id}"
}

resource "aws_route_table" "tfer--rtb-06fab9e30096236c1" {
  region = "ap-northeast-2"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0607bbe983501fd1b"
  }

  tags = {
    Name = "default"
  }

  tags_all = {
    Name = "default"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-06e9ddc7b84b869d1_id}"
}

resource "aws_route_table" "tfer--rtb-0ef557541f5e226ee" {
  region = "ap-northeast-2"

  route {
    cidr_block = "192.168.20.0/24"
    gateway_id = "vgw-09e39a5c96cc9aed4"
  }

  route {
    cidr_block = "192.168.40.0/24"
    gateway_id = "vgw-09e39a5c96cc9aed4"
  }

  tags = {
    Name = "RDS-RT"
  }

  tags_all = {
    Name = "RDS-RT"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e043d21f57c0703e_id}"
}
