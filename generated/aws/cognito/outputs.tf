# 사용자 풀 클라이언트 출력 (dugout-main만 유지)
output "aws_cognito_user_pool_client_tfer--dugout-main_3a58ij7t5e5va7qjkfdmjsghq_id" {
  value = "${aws_cognito_user_pool_client.tfer--dugout-main_3a58ij7t5e5va7qjkfdmjsghq.id}"
}

# 사용자 풀 출력
output "aws_cognito_user_pool_tfer--User-0020-pool-0020---0020-lrmgzt_ap-northeast-2_KYxl8SX2a_id" {
  value = "${aws_cognito_user_pool.tfer--User-0020-pool-0020---0020-lrmgzt_ap-northeast-2_KYxl8SX2a.id}"
}

output "aws_cognito_user_pool_tfer--User-0020-pool-0020---0020-lrmgzt_ap-northeast-2_KYxl8SX2a_arn" {
  value = "${aws_cognito_user_pool.tfer--User-0020-pool-0020---0020-lrmgzt_ap-northeast-2_KYxl8SX2a.arn}"
}