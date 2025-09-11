resource "aws_nat_gateway" "tfer--nat-0d1d1ba9ec02d3aa6" {
  allocation_id                      = "eipalloc-0162dace52f5a9647"
  connectivity_type                  = "public"
  private_ip                         = "10.100.1.153"
  region                             = "ap-northeast-2"
  subnet_id                          = "subnet-04571057be0dbb468"

  tags = {
    Name = "DugOut-NAT"
  }

  tags_all = {
    Name = "DugOut-NAT"
  }
}
