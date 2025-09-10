resource "aws_vpn_gateway" "tfer--vgw-09e39a5c96cc9aed4" {
  amazon_side_asn = "64512"
  region          = "ap-northeast-2"

  tags = {
    Name = "VGW-24"
  }

  tags_all = {
    Name = "VGW-24"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e043d21f57c0703e_id}"
}
