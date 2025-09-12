# CloudFront Distribution 출력 (Dugout 배포만 유지)
output "aws_cloudfront_distribution_tfer--E1NQOA9YMS3RQ6_id" {
  value = "${aws_cloudfront_distribution.tfer--E1NQOA9YMS3RQ6.id}"
}

output "aws_cloudfront_distribution_tfer--E1NQOA9YMS3RQ6_domain_name" {
  value = "${aws_cloudfront_distribution.tfer--E1NQOA9YMS3RQ6.domain_name}"
}

output "aws_cloudfront_distribution_tfer--E1NQOA9YMS3RQ6_arn" {
  value = "${aws_cloudfront_distribution.tfer--E1NQOA9YMS3RQ6.arn}"
}