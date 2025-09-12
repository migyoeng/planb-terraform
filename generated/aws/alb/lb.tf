# VPC 데이터 소스
data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = ["DugOut-VPC"]
  }
}

# Public 서브넷 데이터 소스
data "aws_subnet" "pub_subnet_a" {
  filter {
    name   = "tag:Name"
    values = ["PUB-subnet-a"]
  }
}

data "aws_subnet" "pub_subnet_c" {
  filter {
    name   = "tag:Name"
    values = ["PUB-subnet-c"]
  }
}

# ALB Security Group 데이터 소스
data "aws_security_group" "alb_sg" {
  filter {
    name   = "group-name"
    values = ["ALB-SG"]
  }
}

resource "aws_lb" "tfer--DugOut-ALB" {
  client_keep_alive                           = 3600
  desync_mitigation_mode                      = "defensive"
  drop_invalid_header_fields                  = false
  enable_cross_zone_load_balancing            = true
  enable_deletion_protection                   = false
  enable_http2                                = true
  enable_tls_version_and_cipher_suite_headers = false
  enable_waf_fail_open                        = false
  enable_xff_client_port                      = false
  enable_zonal_shift                          = false
  idle_timeout                                = 60
  internal                                    = false
  ip_address_type                             = "ipv4"
  load_balancer_type                          = "application"
  name                                        = "DugOut-ALB"
  preserve_host_header                        = false

  security_groups = [data.aws_security_group.alb_sg.id]

  subnets = [
    data.aws_subnet.pub_subnet_a.id,
    data.aws_subnet.pub_subnet_c.id
  ]

  xff_header_processing_mode = "append"
}

# Private 서브넷 데이터 소스
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

resource "aws_lb" "tfer--info-final" {
  client_keep_alive                           = 3600
  desync_mitigation_mode                      = "defensive"
  drop_invalid_header_fields                  = false
  enable_cross_zone_load_balancing            = true
  enable_deletion_protection                   = false
  enable_http2                                = true
  enable_tls_version_and_cipher_suite_headers = false
  enable_waf_fail_open                        = false
  enable_xff_client_port                      = false
  enable_zonal_shift                          = false
  idle_timeout                                = 60
  internal                                    = true
  ip_address_type                             = "ipv4"
  load_balancer_type                          = "application"
  name                                        = "info-final"
  preserve_host_header                        = false

  security_groups = [data.aws_security_group.alb_sg.id]

  subnets = [
    data.aws_subnet.pri_subnet_a.id,
    data.aws_subnet.pri_subnet_c.id
  ]

  xff_header_processing_mode = "append"
}
