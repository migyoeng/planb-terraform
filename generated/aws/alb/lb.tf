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

  security_groups = [
    data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ALB-SG_sg-04de431b39e807229_id
  ]

  subnets = [
    data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-02ef09cd4e75ad48e_id,
    data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0b9a0280aa66167fe_id
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

  security_groups = [
    data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ALB-SG_sg-04de431b39e807229_id
  ]

  subnets = [
    data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-00258c4a6ac72c4ce_id,
    data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0e08b5b05fdad2efc_id
  ]

  xff_header_processing_mode = "append"
}
