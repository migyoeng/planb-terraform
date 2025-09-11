resource "aws_lb_listener" "tfer--DugOut-ALB" {
  default_action {
    order = 1

    redirect {
      host        = "d18wspy7xouagh.cloudfront.net"
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
  region                              = "ap-northeast-2"
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
  region                              = "ap-northeast-2"
  routing_http_response_server_enabled = true
}
