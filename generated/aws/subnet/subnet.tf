resource "aws_subnet" "tfer--subnet-00258c4a6ac72c4ce" {

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.100.128.0/20"
  enable_dns64                                   = "false"

  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
 
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"
  availability_zone                              = "ap-northeast-2a"

  tags = {
    Name = "PRI-subnet-a"
  }

  tags_all = {
    Name = "PRI-subnet-a"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e043d21f57c0703e_id}"
}

resource "aws_subnet" "tfer--subnet-02ef09cd4e75ad48e" {
 
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.100.16.0/20"
  enable_dns64                                   = "false"
  
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"

  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"
  availability_zone                              = "ap-northeast-2c"

  tags = {
    Name = "PUB-subnet-c"
  }

  tags_all = {
    Name = "PUB-subnet-c"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e043d21f57c0703e_id}"
}


resource "aws_subnet" "tfer--subnet-07e1138aac7e95c7c" {

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.100.176.0/20"
  enable_dns64                                   = "false"
 
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"
  availability_zone                              = "ap-northeast-2c"

  tags = {
    Name = "RDS-subnet-c"
  }

  tags_all = {
    Name = "RDS-subnet-c"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e043d21f57c0703e_id}"
}

resource "aws_subnet" "tfer--subnet-0b9a0280aa66167fe" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.100.0.0/20"
  enable_dns64                                   = "false"
 
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"

  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"
  availability_zone                              = "ap-northeast-2a"

  tags = {
    Name = "PUB-subnet-a"
  }

  tags_all = {
    Name = "PUB-subnet-a"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e043d21f57c0703e_id}"
}

resource "aws_subnet" "tfer--subnet-0dcde6507114a320f" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.100.160.0/20"
  enable_dns64                                   = "false"
  
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
 
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"
  availability_zone                              = "ap-northeast-2a"

  tags = {
    Name = "RDS-subnet-a"
  }

  tags_all = {
    Name = "RDS-subnet-a"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e043d21f57c0703e_id}"
}

resource "aws_subnet" "tfer--subnet-0e08b5b05fdad2efc" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.100.144.0/20"
  enable_dns64                                   = "false"

  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
 
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"
  availability_zone                              = "ap-northeast-2c"

  tags = {
    Name = "PRI-subnet-c"
  }

  tags_all = {
    Name = "PRI-subnet-c"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e043d21f57c0703e_id}"
}
