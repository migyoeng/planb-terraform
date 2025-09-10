resource "aws_internet_gateway" "tfer--igw-0607bbe983501fd1b" {
  region = "ap-northeast-2"

  tags = {
    Name = "default"
  }

  tags_all = {
    Name = "default"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-06e9ddc7b84b869d1_id}"
}

resource "aws_internet_gateway" "tfer--igw-0de2b214e06889fc8" {
  region = "ap-northeast-2"

  tags = {
    Name = "DugOut-IGW"
  }

  tags_all = {
    Name = "DugOut-IGW"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e043d21f57c0703e_id}"
}


