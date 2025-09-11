resource "aws_network_interface" "tfer--eni-01b6af54923d675fe" {
  description        = "RDSNetworkInterface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip_list    = ["10.100.131.91"]
  region             = "ap-northeast-2"
  security_groups    = ["sg-09dcb1de62d658b08"]
  source_dest_check  = "true"
  subnet_id          = "subnet-00258c4a6ac72c4ce"
}

resource "aws_network_interface" "tfer--eni-0360b6116e121ea9f" {
  description        = "arn:aws:ecs:ap-northeast-2:726629337826:attachment/737ff408-0e2b-41af-837c-49ce4048de9b"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip_list    = ["10.100.128.252"]
  region             = "ap-northeast-2"
  security_groups    = ["sg-0dd82609d8f080a0f"]
  source_dest_check  = "true"
  subnet_id          = "subnet-00258c4a6ac72c4ce"
}

resource "aws_network_interface" "tfer--eni-0401f525b76d15fb1" {
  description        = "Interface for NAT Gateway nat-0d1d1ba9ec02d3aa6"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip_list    = ["10.100.1.153"]
  region             = "ap-northeast-2"
  source_dest_check  = "false"
  subnet_id          = "subnet-0b9a0280aa66167fe"
}

resource "aws_network_interface" "tfer--eni-0779d6c0e3a03df3c" {
  description        = "ELB app/info-final/5bd164072db03311"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip_list    = ["10.100.128.251"]
  region             = "ap-northeast-2"
  security_groups    = ["sg-04de431b39e807229"]
  source_dest_check  = "true"
  subnet_id          = "subnet-00258c4a6ac72c4ce"
}

resource "aws_network_interface" "tfer--eni-07cd0fb55a213e389" {
  description        = "arn:aws:ecs:ap-northeast-2:726629337826:attachment/5cfaa58d-89ea-4ce8-a187-3e63fbf40fd5"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip_list    = ["10.100.144.20"]
  region             = "ap-northeast-2"
  security_groups    = ["sg-0dd82609d8f080a0f"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0e08b5b05fdad2efc"
}

resource "aws_network_interface" "tfer--eni-07fa670621d4eb5c1" {
  description        = "VPC Endpoint Interface vpce-0f7e3a4b10d87e195"

  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip_list    = ["10.100.138.230"]
  region             = "ap-northeast-2"
  security_groups    = ["sg-0fb55cc0d37e47a52"]
  source_dest_check  = "true"
  subnet_id          = "subnet-00258c4a6ac72c4ce"
}

resource "aws_network_interface" "tfer--eni-0942501e66bda79ab" {
  description        = "ELB app/DugOut-ALB/4e16ac14fd6170cb"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip_list    = ["10.100.28.223"]
  region             = "ap-northeast-2"
  security_groups    = ["sg-04de431b39e807229"]
  source_dest_check  = "true"
  subnet_id          = "subnet-02ef09cd4e75ad48e"
}

resource "aws_network_interface" "tfer--eni-0a2d851c88b4bf1e3" {
  description        = "RDSNetworkInterface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip_list    = ["10.100.169.225"]
  region             = "ap-northeast-2"
  security_groups    = ["sg-09dcb1de62d658b08"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0dcde6507114a320f"
}

resource "aws_network_interface" "tfer--eni-0a3a273fba081bfaa" {
  description        = "arn:aws:ecs:ap-northeast-2:726629337826:attachment/babee1ab-327d-4d3f-825b-6443d324788e"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"

  private_ip_list    = ["10.100.153.15"]
  region             = "ap-northeast-2"
  security_groups    = ["sg-0dd82609d8f080a0f"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0e08b5b05fdad2efc"
}

resource "aws_network_interface" "tfer--eni-0b80cb1982ab47830" {
  description        = "VPC Endpoint Interface vpce-0f7e3a4b10d87e195"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"

  private_ip_list    = ["10.100.157.229"]
  region             = "ap-northeast-2"
  security_groups    = ["sg-0fb55cc0d37e47a52"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0e08b5b05fdad2efc"
}

resource "aws_network_interface" "tfer--eni-0ca221316507dbd45" {
  description        = "ELB app/info-final/5bd164072db03311"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"

  private_ip_list    = ["10.100.145.167"]
  region             = "ap-northeast-2"
  security_groups    = ["sg-04de431b39e807229"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0e08b5b05fdad2efc"
}

resource "aws_network_interface" "tfer--eni-0cabedf961b37080d" {
  description        = "RDSNetworkInterface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip_list    = ["10.100.140.154"]
  region             = "ap-northeast-2"
  security_groups    = ["sg-09dcb1de62d658b08"]
  source_dest_check  = "true"
  subnet_id          = "subnet-00258c4a6ac72c4ce"
}

resource "aws_network_interface" "tfer--eni-0d79480c9e32504af" {
  description        = "ELB app/DugOut-ALB/4e16ac14fd6170cb"

  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip_list    = ["10.100.2.77"]
  region             = "ap-northeast-2"
  security_groups    = ["sg-04de431b39e807229"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0b9a0280aa66167fe"
}

resource "aws_network_interface" "tfer--eni-0e145efeab1d8f0cb" {
  description        = "DMSNetworkInterface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip_list    = ["10.100.128.71"]
  region             = "ap-northeast-2"
  security_groups    = ["sg-07c55b43e8f90cfe2"]
  source_dest_check  = "true"
  subnet_id          = "subnet-00258c4a6ac72c4ce"
}

resource "aws_network_interface" "tfer--eni-0e7302e0797b46b20" {
  description        = "ENI managed by APIGateway"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip_list    = ["10.100.141.137"]
  region             = "ap-northeast-2"
  security_groups    = ["sg-04de431b39e807229"]
  source_dest_check  = "true"
  subnet_id          = "subnet-00258c4a6ac72c4ce"

  tags = {
    Owner     = "ops.apigateway.amazonaws.com"
    VpcLinkId = "ucie4k"
  }

  tags_all = {
    Owner     = "ops.apigateway.amazonaws.com"
    VpcLinkId = "ucie4k"
  }
}

resource "aws_network_interface" "tfer--eni-0f2623d112abcce58" {
  description        = "ENI managed by APIGateway"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip_list    = ["10.100.148.57"]
  region             = "ap-northeast-2"
  security_groups    = ["sg-04de431b39e807229"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0e08b5b05fdad2efc"

  tags = {
    Owner     = "ops.apigateway.amazonaws.com"
    VpcLinkId = "ucie4k"
  }

  tags_all = {
    Owner     = "ops.apigateway.amazonaws.com"
    VpcLinkId = "ucie4k"
  }
}
