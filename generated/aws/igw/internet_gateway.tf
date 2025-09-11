
resource "aws_internet_gateway" "tfer--igw-0de2b214e06889fc8" {
  region = "ap-northeast-2"

  tags = {
    Name = "DugOut-IGW"
  }

  tags_all = {
    Name = "DugOut-IGW"
  }

  vpc_id = "vpc-07c0ec2f9b90293b6"
}


