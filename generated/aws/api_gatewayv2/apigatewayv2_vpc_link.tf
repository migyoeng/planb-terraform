resource "aws_apigatewayv2_vpc_link" "tfer--ucie4k" {
  name               = "info-final"
  security_group_ids = ["sg-04de431b39e807229"]
  subnet_ids         = ["subnet-00258c4a6ac72c4ce", "subnet-0e08b5b05fdad2efc"]
}
