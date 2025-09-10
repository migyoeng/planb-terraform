resource "aws_vpc" "tfer--vpc-0e043d21f57c0703e" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "10.100.0.0/16"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  region                               = "ap-northeast-2"

  tags = {
    Name = "DugOut-VPC"
  }

  tags_all = {
    Name = "DugOut-VPC"
  }
}


