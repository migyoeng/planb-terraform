resource "aws_lb_listener_rule" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-northeast-2-003A-726629337826-003A-listener-rule-002F-app-002F-DugOut-ALB-002F-4e16ac14fd6170cb-002F-bd349d80f006d85d-002F-36cb0d9ace7968a7" {
  action {
    forward {
      stickiness {
        duration = "3600"
        enabled  = "false"
      }

      target_group {
        arn    = "arn:aws:elasticloadbalancing:ap-northeast-2:726629337826:targetgroup/Board-TG/2496cc953a68f155"
        weight = "1"
      }
    }

    order            = "1"
    target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:726629337826:targetgroup/Board-TG/2496cc953a68f155"
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/api/board/*"]
    }
  }

  listener_arn = "${aws_lb_listener.tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-northeast-2-003A-726629337826-003A-listener-002F-app-002F-DugOut-ALB-002F-4e16ac14fd6170cb-002F-bd349d80f006d85d.arn}"
  priority     = "2"
  region       = "ap-northeast-2"
}

resource "aws_lb_listener_rule" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-northeast-2-003A-726629337826-003A-listener-rule-002F-app-002F-DugOut-ALB-002F-4e16ac14fd6170cb-002F-bd349d80f006d85d-002F-4c04beb0de18890d" {
  action {
    forward {
      stickiness {
        duration = "3600"
        enabled  = "false"
      }

      target_group {
        arn    = "arn:aws:elasticloadbalancing:ap-northeast-2:726629337826:targetgroup/User-TG/31e8920beb393a4f"
        weight = "1"
      }
    }

    order            = "1"
    target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:726629337826:targetgroup/User-TG/31e8920beb393a4f"
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/api/user/*"]
    }
  }

  listener_arn = "${aws_lb_listener.tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-northeast-2-003A-726629337826-003A-listener-002F-app-002F-DugOut-ALB-002F-4e16ac14fd6170cb-002F-bd349d80f006d85d.arn}"
  priority     = "1"
  region       = "ap-northeast-2"
}

resource "aws_lb_listener_rule" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-northeast-2-003A-726629337826-003A-listener-rule-002F-app-002F-DugOut-ALB-002F-4e16ac14fd6170cb-002F-bd349d80f006d85d-002F-786e1888f62a53e0" {
  action {
    forward {
      stickiness {
        duration = "3600"
        enabled  = "false"
      }

      target_group {
        arn    = "arn:aws:elasticloadbalancing:ap-northeast-2:726629337826:targetgroup/News-TG/8b247acc3eb36d89"
        weight = "1"
      }
    }

    order            = "1"
    target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:726629337826:targetgroup/News-TG/8b247acc3eb36d89"
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/api/news/*"]
    }
  }

  listener_arn = "${aws_lb_listener.tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-northeast-2-003A-726629337826-003A-listener-002F-app-002F-DugOut-ALB-002F-4e16ac14fd6170cb-002F-bd349d80f006d85d.arn}"
  priority     = "4"
  region       = "ap-northeast-2"
}

resource "aws_lb_listener_rule" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-northeast-2-003A-726629337826-003A-listener-rule-002F-app-002F-DugOut-ALB-002F-4e16ac14fd6170cb-002F-bd349d80f006d85d-002F-d4ec987314ed6bf6" {
  action {
    forward {
      stickiness {
        duration = "3600"
        enabled  = "false"
      }

      target_group {
        arn    = "arn:aws:elasticloadbalancing:ap-northeast-2:726629337826:targetgroup/Event-TG/be5b96b559965beb"
        weight = "1"
      }
    }

    order            = "1"
    target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:726629337826:targetgroup/Event-TG/be5b96b559965beb"
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/api/event/*"]
    }
  }

  listener_arn = "${aws_lb_listener.tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-northeast-2-003A-726629337826-003A-listener-002F-app-002F-DugOut-ALB-002F-4e16ac14fd6170cb-002F-bd349d80f006d85d.arn}"
  priority     = "3"
  region       = "ap-northeast-2"
}
