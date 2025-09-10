resource "aws_default_network_acl" "tfer--acl-08ab2e6bd2ddf23cc" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  region     = "ap-northeast-2"
  subnet_ids = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-04c4c4574509c0589_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0ea5cd17de4545e04_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f50d01bc8a354730_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0fe9b23c828a84458_id}"]
}

resource "aws_default_network_acl" "tfer--acl-09c976f0c05993213" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  region     = "ap-northeast-2"
  subnet_ids = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-00258c4a6ac72c4ce_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-02ef09cd4e75ad48e_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-07e1138aac7e95c7c_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0b9a0280aa66167fe_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0dcde6507114a320f_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0e08b5b05fdad2efc_id}"]
}
