resource "aws_main_route_table_association" "tfer--vpc-0e043d21f57c0703e" {
  region         = "ap-northeast-2"
  route_table_id = aws_route_table.tfer--rtb-067cd938aa6bfff61.id
  vpc_id         = data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e043d21f57c0703e_id
}
