resource "aws_vpn_connection" "tfer--vpn-07b1e5de1e6bd5e8d" {
  customer_gateway_id      = "${data.terraform_remote_state.customer_gateway.outputs.aws_customer_gateway_tfer--cgw-0a96235b27ed3a889_id}"
  local_ipv4_network_cidr  = "0.0.0.0/0"
  outside_ip_address_type  = "PublicIpv4"
  preshared_key_storage    = "Standard"
  region                   = "ap-northeast-2"
  remote_ipv4_network_cidr = "0.0.0.0/0"
  static_routes_only       = "true"

  tags = {
    Name = "VPN-24"
  }

  tags_all = {
    Name = "VPN-24"
  }

  tunnel1_dpd_timeout_seconds             = "30"
  tunnel1_enable_tunnel_lifecycle_control = "false"
  tunnel1_inside_cidr                     = "169.254.141.148/30"

  tunnel1_log_options {
    cloudwatch_log_options {
      log_enabled = "false"
    }
  }

  tunnel1_phase1_lifetime_seconds         = "28800"
  tunnel1_phase2_lifetime_seconds         = "3600"
  tunnel1_preshared_key                   = "tVsqan2gy5aoMEBrC4M1_M1iLOygvoTh"
  tunnel1_rekey_fuzz_percentage           = "0"
  tunnel1_rekey_margin_time_seconds       = "300"
  tunnel1_replay_window_size              = "1024"
  tunnel2_dpd_timeout_seconds             = "30"
  tunnel2_enable_tunnel_lifecycle_control = "false"
  tunnel2_inside_cidr                     = "169.254.121.208/30"

  tunnel2_log_options {
    cloudwatch_log_options {
      log_enabled = "false"
    }
  }

  tunnel2_phase1_lifetime_seconds   = "28800"
  tunnel2_phase2_lifetime_seconds   = "3600"
  tunnel2_preshared_key             = "2RZpXInd5.F9zEY4eUfs9z_0QNtBfgRV"
  tunnel2_rekey_fuzz_percentage     = "0"
  tunnel2_rekey_margin_time_seconds = "300"
  tunnel2_replay_window_size        = "1024"
  tunnel_inside_ip_version          = "ipv4"
  type                              = "ipsec.1"
  vpn_gateway_id                    = "${data.terraform_remote_state.vpn_gateway.outputs.aws_vpn_gateway_tfer--vgw-09e39a5c96cc9aed4_id}"
}
