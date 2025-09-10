resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-northeast-2-003A-726629337826-003A-listener-002F-app-002F-DugOut-ALB-002F-4e16ac14fd6170cb-002F-bd349d80f006d85d" {
  default_action {
    order = "1"

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

  load_balancer_arn                    = "${aws_lb.tfer--DugOut-ALB.arn}"
  port                                 = "80"
  protocol                             = "HTTP"
  region                               = "ap-northeast-2"
  routing_http_response_server_enabled = "true"
}

resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-northeast-2-003A-726629337826-003A-listener-002F-app-002F-info-final-002F-5bd164072db03311-002F-4d7fb2ef91a33eab" {
  default_action {
    forward {
      stickiness {
        duration = "1"
        enabled  = "false"
      }

      target_group {
        arn    = "arn:aws:elasticloadbalancing:ap-northeast-2:726629337826:targetgroup/info-final/de115e9d504e7a24"
        weight = "1"
      }
    }

    target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:726629337826:targetgroup/info-final/de115e9d504e7a24"
    type             = "forward"
  }

  load_balancer_arn                    = "${aws_lb.tfer--info-final.arn}"
  port                                 = "8004"
  protocol                             = "HTTP"
  region                               = "ap-northeast-2"
  routing_http_response_server_enabled = "true"
}
