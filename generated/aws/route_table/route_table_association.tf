resource "aws_route_table_association" "tfer--subnet-00258c4a6ac72c4ce" {
  region         = "ap-northeast-2"
  route_table_id = aws_route_table.tfer--rtb-03a439676c94e13f9.id
  subnet_id      = data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-00258c4a6ac72c4ce_id
}

resource "aws_route_table_association" "tfer--subnet-02ef09cd4e75ad48e" {
  region         = "ap-northeast-2"
  route_table_id = aws_route_table.tfer--rtb-02e2b0e7d5ba0d441.id
  subnet_id      = data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-02ef09cd4e75ad48e_id
}

resource "aws_route_table_association" "tfer--subnet-07e1138aac7e95c7c" {
  region         = "ap-northeast-2"
  route_table_id = aws_route_table.tfer--rtb-0ef557541f5e226ee.id
  subnet_id      = data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-07e1138aac7e95c7c_id
}

resource "aws_route_table_association" "tfer--subnet-0b9a0280aa66167fe" {
  region         = "ap-northeast-2"
  route_table_id = aws_route_table.tfer--rtb-02e2b0e7d5ba0d441.id
  subnet_id      = data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0b9a0280aa66167fe_id
}

resource "aws_route_table_association" "tfer--subnet-0dcde6507114a320f" {
  region         = "ap-northeast-2"
  route_table_id = aws_route_table.tfer--rtb-0ef557541f5e226ee.id
  subnet_id      = data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0dcde6507114a320f_id
}

resource "aws_route_table_association" "tfer--subnet-0e08b5b05fdad2efc" {
  region         = "ap-northeast-2"
  route_table_id = aws_route_table.tfer--rtb-03a439676c94e13f9.id
  subnet_id      = data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0e08b5b05fdad2efc_id
}
