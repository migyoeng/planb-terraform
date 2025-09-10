resource "aws_launch_template" "tfer--AWFDASDF" {
  default_version         = "1"
  description             = "ASDFASD"
  disable_api_stop        = "false"
  disable_api_termination = "false"
  image_id                = "ami-03761804003d15fb2"
  instance_type           = "t2.micro"
  key_name                = "admin"

  monitoring {
    enabled = "true"
  }

  name                   = "AWFDASDF"
  region                 = "ap-northeast-2"
  user_data              = "IyEvYmluL2Jhc2gKUlpBWj0nY3VybCBodHRwOi8vMTY5LjI1NC4xNjkuMjU0L2xhdGVzdC9tZXRhLWRhdGEvcGxhY2VtZW50L2F2YWlsYWJpbGl0eS16b25lLWlkJyBJSUQ9J2N1cmwgMTY5LjI1NC4xNjkuMjU0L2xhdGVzdC9tZXRhLWRhdGEvaW5zdGFuY2UtaWQnCkxJUD0nY3VybCAxNjkuMjU0LjE2OS4yNTQvbGF0ZXN0L21ldGEtZGF0YS9sb2NhbC1pcHY0JwphbWF6b24tbGludXgtZXh0cmFzIGluc3RhbGwgLXkgcGhwOC4wCnl1bSBpbnN0YWxsIGh0dHBkIGh0b3AgdG11eCAteQpzeXN0ZW1jdGwgc3RhcnQgaHR0cGQgJiYgc3lzdGVtY3RsIGVuYWJsZSBodHRwZAplY2hvICI8aDE+UmVnaW9uQXooJFJaQVopOiBJbnN0YW5jZSBJRCgkSUlEKTogUHJpdmF0ZSBJUCgkTElQKTogV2ViIFNlcnZlcjwvaDE+IiA+IC92YXIvd3d3L2h0bWwvaW5kZXguaHRtbCBlY2hvICIxIiA+IC92YXIvd3d3L2h0bWwvSGVhbHRoQ2hlY2sudHh0CmN1cmwgLW8gL3Zhci93d3cvaHRtbC9sb2FkLnBocCBodHRwczovL2Nsb3VkbmV0YS1ib29rLnMzLmFwLW5vcnRoZWFzdC0yLmFtYXpvbmF3cy5jb20vY2hhcHRlcjUvbG9hZC5waHAgLS1zaWxlbnQ="
  vpc_security_group_ids = ["sg-038dda09936e85d37"]
}

resource "aws_launch_template" "tfer--testtemp" {
  default_version         = "1"
  description             = "test"
  disable_api_stop        = "false"
  disable_api_termination = "false"
  image_id                = "ami-03761804003d15fb2"
  instance_type           = "t2.micro"
  key_name                = "admin"
  name                    = "testtemp"
  region                  = "ap-northeast-2"
  user_data               = "IyEvYmluL2Jhc2gKUlpBWj0nY3VybCBodHRwOi8vMTY5LjI1NC4xNjkuMjU0L2xhdGVzdC9tZXRhLWRhdGEvcGxhY2VtZW50L2F2YWlsYWJpbGl0eS16b25lLWlkJyBJSUQ9J2N1cmwgMTY5LjI1NC4xNjkuMjU0L2xhdGVzdC9tZXRhLWRhdGEvaW5zdGFuY2UtaWQnCkxJUD0nY3VybCAxNjkuMjU0LjE2OS4yNTQvbGF0ZXN0L21ldGEtZGF0YS9sb2NhbC1pcHY0JwphbWF6b24tbGludXgtZXh0cmFzIGluc3RhbGwgLXkgcGhwOC4wCnl1bSBpbnN0YWxsIGh0dHBkIGh0b3AgdG11eCAteQpzeXN0ZW1jdGwgc3RhcnQgaHR0cGQgJiYgc3lzdGVtY3RsIGVuYWJsZSBodHRwZAplY2hvICI8aDE+UmVnaW9uQXooJFJaQVopOiBJbnN0YW5jZSBJRCgkSUlEKTogUHJpdmF0ZSBJUCgkTElQKTogV2ViIFNlcnZlcjwvaDE+IiA+IC92YXIvd3d3L2h0bWwvaW5kZXguaHRtbCBlY2hvICIxIiA+IC92YXIvd3d3L2h0bWwvSGVhbHRoQ2hlY2sudHh0CmN1cmwgLW8gL3Zhci93d3cvaHRtbC9sb2FkLnBocCBodHRwczovL2Nsb3VkbmV0YS1ib29rLnMzLmFwLW5vcnRoZWFzdC0yLmFtYXpvbmF3cy5jb20vY2hhcHRlcjUvbG9hZC5waHAgLS1zaWxlbnQ="
  vpc_security_group_ids  = ["sg-038dda09936e85d37"]
}
