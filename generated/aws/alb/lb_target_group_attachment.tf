resource "aws_lb_target_group_attachment" "tfer--Board-TG-attachment" {
  region           = "ap-northeast-2"
  target_group_arn = aws_lb_target_group.tfer--Board-TG.arn
  target_id        = "10.100.128.252"
}

resource "aws_lb_target_group_attachment" "tfer--Event-TG-attachment" {
  region           = "ap-northeast-2"
  target_group_arn = aws_lb_target_group.tfer--Event-TG.arn
  target_id        = "10.100.144.20"
}

resource "aws_lb_target_group_attachment" "tfer--User-TG-attachment" {
  region           = "ap-northeast-2"
  target_group_arn = aws_lb_target_group.tfer--User-TG.arn
  target_id        = "10.100.153.15"
}

resource "aws_lb_target_group_attachment" "tfer--info-final-attachment" {
  region           = "ap-northeast-2"
  target_group_arn = aws_lb_target_group.tfer--info-final.arn
  target_id        = "192.168.20.190"
}
