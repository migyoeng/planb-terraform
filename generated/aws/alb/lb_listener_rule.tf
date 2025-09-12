resource "aws_lb_listener_rule" "tfer--Board-TG-rule" {
  action {
    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }

      target_group {
        arn    = aws_lb_target_group.tfer--Board-TG.arn
        weight = 1
      }
    }

    order            = 1
    target_group_arn = aws_lb_target_group.tfer--Board-TG.arn
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/api/board/*"]
    }
  }

  listener_arn = aws_lb_listener.tfer--DugOut-ALB.arn
  priority     = 2
}

resource "aws_lb_listener_rule" "tfer--User-TG-rule" {
  action {
    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }

      target_group {
        arn    = aws_lb_target_group.tfer--User-TG.arn
        weight = 1
      }
    }

    order            = 1
    target_group_arn = aws_lb_target_group.tfer--User-TG.arn
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/api/user/*"]
    }
  }

  listener_arn = aws_lb_listener.tfer--DugOut-ALB.arn
  priority     = 1
}

resource "aws_lb_listener_rule" "tfer--News-TG-rule" {
  action {
    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }

      target_group {
        arn    = aws_lb_target_group.tfer--News-TG.arn
        weight = 1
      }
    }

    order            = 1
    target_group_arn = aws_lb_target_group.tfer--News-TG.arn
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/api/news/*"]
    }
  }

  listener_arn = aws_lb_listener.tfer--DugOut-ALB.arn
  priority     = 4
}

resource "aws_lb_listener_rule" "tfer--Event-TG-rule" {
  action {
    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }

      target_group {
        arn    = aws_lb_target_group.tfer--Event-TG.arn
        weight = 1
      }
    }

    order            = 1
    target_group_arn = aws_lb_target_group.tfer--Event-TG.arn
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/api/event/*"]
    }
  }

  listener_arn = aws_lb_listener.tfer--DugOut-ALB.arn
  priority     = 3
}
