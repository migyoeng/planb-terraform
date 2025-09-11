resource "aws_lb" "tfer--DugOut-ALB" {
  client_keep_alive                           = 3600
  desync_mitigation_mode                      = "defensive"
  drop_invalid_header_fields                  = false
  enable_cross_zone_load_balancing            = true
  enable_deletion_protection                   = false
  enable_http2                                = true
  enable_tls_version_and_cipher_suite_headers = false
  enable_waf_fail_open                        = false
  enable_xff_client_port                      = false
  enable_zonal_shift                          = false
  idle_timeout                                = 60
  internal                                    = false
  ip_address_type                             = "ipv4"
  load_balancer_type                          = "application"
  name                                        = "DugOut-ALB"
  preserve_host_header                        = false
  region                                      = "ap-northeast-2"

  security_groups = ["sg-06eaadf0d776167dd"]

  subnets = [
    "subnet-0f3ca2ae304d3f77a", # PUB-subnet-c
    "subnet-04571057be0dbb468"  # PUB-subnet-a
  ]

  xff_header_processing_mode = "append"
}

resource "aws_lb" "tfer--info-final" {
  client_keep_alive                           = 3600
  desync_mitigation_mode                      = "defensive"
  drop_invalid_header_fields                  = false
  enable_cross_zone_load_balancing            = true
  enable_deletion_protection                   = false
  enable_http2                                = true
  enable_tls_version_and_cipher_suite_headers = false
  enable_waf_fail_open                        = false
  enable_xff_client_port                      = false
  enable_zonal_shift                          = false
  idle_timeout                                = 60
  internal                                    = true
  ip_address_type                             = "ipv4"
  load_balancer_type                          = "application"
  name                                        = "info-final"
  preserve_host_header                        = false
  region                                      = "ap-northeast-2"

  security_groups = ["sg-06eaadf0d776167dd"]

  subnets = [
  "subnet-01d6b3f11339116d7", # PRI-subnet-c
  "subnet-074b85fa6955ddbd5"  # PRI-subnet-a
  ]

  xff_header_processing_mode = "append"
}
