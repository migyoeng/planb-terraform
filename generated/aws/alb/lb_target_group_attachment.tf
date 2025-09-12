resource "aws_lb_target_group_attachment" "tfer--Board-TG-attachment" {
  target_group_arn = aws_lb_target_group.tfer--Board-TG.arn
  target_id        = "10.100.128.252"
}

resource "aws_lb_target_group_attachment" "tfer--Event-TG-attachment" {
  target_group_arn = aws_lb_target_group.tfer--Event-TG.arn
  target_id        = "10.100.144.20"
}

resource "aws_lb_target_group_attachment" "tfer--User-TG-attachment" {
  target_group_arn = aws_lb_target_group.tfer--User-TG.arn
  target_id        = "10.100.153.15"
}

# info-final attachment는 온프레미스 서버이므로 제거
# 온프레미스 서버는 VPC 외부에 있어서 직접 Target Group에 등록할 수 없음
