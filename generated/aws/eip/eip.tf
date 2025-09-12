resource "aws_eip" "main" {
  domain               = "vpc"
  network_border_group = "ap-northeast-2"
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "DugOut-EIP"
  }
}
