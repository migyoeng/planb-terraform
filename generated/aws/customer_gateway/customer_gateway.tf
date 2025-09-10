resource "aws_customer_gateway" "tfer--cgw-0a96235b27ed3a889" {
  bgp_asn    = "65000"
  ip_address = "106.248.40.226"
  region     = "ap-northeast-2"

  tags = {
    Name = "public-ip"
  }

  tags_all = {
    Name = "public-ip"
  }

  type = "ipsec.1"
}
