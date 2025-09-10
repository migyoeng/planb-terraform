resource "aws_vpc_endpoint" "tfer--vpce-0f7e3a4b10d87e195" {
  dns_options {
    dns_record_ip_type                             = "ipv4"
    private_dns_only_for_inbound_resolver_endpoint = "false"
  }

  ip_address_type     = "ipv4"
  policy              = "{\"Statement\":[{\"Action\":\"*\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"*\"}]}"
  private_dns_enabled = "true"
  region              = "ap-northeast-2"
  security_group_ids  = ["sg-0fb55cc0d37e47a52"]
  service_name        = "com.amazonaws.ap-northeast-2.secretsmanager"
  service_region      = "ap-northeast-2"

  subnet_configuration {
    ipv4      = "10.100.138.230"
    subnet_id = "subnet-00258c4a6ac72c4ce"
  }

  subnet_configuration {
    ipv4      = "10.100.157.229"
    subnet_id = "subnet-0e08b5b05fdad2efc"
  }

  subnet_ids = ["subnet-00258c4a6ac72c4ce", "subnet-0e08b5b05fdad2efc"]

  tags = {
    Name = "DugOut-VPC-Endpoint"
  }

  tags_all = {
    Name = "DugOut-VPC-Endpoint"
  }

  vpc_endpoint_type = "Interface"
  vpc_id            = "vpc-0e043d21f57c0703e"
}
