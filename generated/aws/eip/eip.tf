resource "aws_eip" "tfer--eipalloc-0f96659c79aaa38da" {
  domain               = "vpc"
  network_border_group = "ap-northeast-2"
  network_interface    = "eni-0401f525b76d15fb1"
  public_ipv4_pool     = "amazon"
  region               = "ap-northeast-2"
}
