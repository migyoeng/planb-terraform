resource "aws_eip" "tfer--eipalloc-0f96659c79aaa38da" {
  domain               = "vpc"
  network_border_group = "ap-northeast-2"
  network_interface    = "eni-00eb6e76a8a9deb53"
  public_ipv4_pool     = "amazon"
  region               = "ap-northeast-2"
}
