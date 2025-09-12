# CloudFront Distribution 데이터 소스
data "terraform_remote_state" "cloudfront" {
  backend = "local"
  config = {
    path = "../cloudfront/terraform.tfstate"
  }
}

resource "aws_lb_listener" "tfer--DugOut-ALB" {
  default_action {
    order = 1

    redirect {
      host        = data.terraform_remote_state.cloudfront.outputs.aws_cloudfront_distribution_tfer--E1NQOA9YMS3RQ6_domain_name
      path        = "/#{path}"
      port        = "#{port}"
      protocol    = "HTTPS"
      query       = "#{query}"
      status_code = "HTTP_302"
    }

    type = "redirect"
  }

  load_balancer_arn                    = aws_lb.tfer--DugOut-ALB.arn
  port                                = 80
  protocol                            = "HTTP"
  routing_http_response_server_enabled = true
}

resource "aws_lb_listener" "tfer--info-final" {
  default_action {
    forward {
      stickiness {
        duration = 1
        enabled  = false
      }

      target_group {
        arn    = aws_lb_target_group.tfer--info-final.arn
        weight = 1
      }
    }

    target_group_arn = aws_lb_target_group.tfer--info-final.arn
    type             = "forward"
  }

  load_balancer_arn                    = aws_lb.tfer--info-final.arn
  port                                = 8004
  protocol                            = "HTTP"
  routing_http_response_server_enabled = true
}
