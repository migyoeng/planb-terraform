resource "aws_lb_target_group_attachment" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-northeast-2-003A-726629337826-003A-targetgroup-002F-Board-TG-002F-2496cc953a68f155-10-002E-100-002E-128-002E-252" {
  region           = "ap-northeast-2"
  target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:726629337826:targetgroup/Board-TG/2496cc953a68f155"
  target_id        = "10.100.128.252"
}

resource "aws_lb_target_group_attachment" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-northeast-2-003A-726629337826-003A-targetgroup-002F-Event-TG-002F-be5b96b559965beb-10-002E-100-002E-144-002E-20" {
  region           = "ap-northeast-2"
  target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:726629337826:targetgroup/Event-TG/be5b96b559965beb"
  target_id        = "10.100.144.20"
}

resource "aws_lb_target_group_attachment" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-northeast-2-003A-726629337826-003A-targetgroup-002F-User-TG-002F-31e8920beb393a4f-10-002E-100-002E-153-002E-15" {
  region           = "ap-northeast-2"
  target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:726629337826:targetgroup/User-TG/31e8920beb393a4f"
  target_id        = "10.100.153.15"
}

resource "aws_lb_target_group_attachment" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-northeast-2-003A-726629337826-003A-targetgroup-002F-info-final-002F-de115e9d504e7a24-192-002E-168-002E-20-002E-190" {
  region           = "ap-northeast-2"
  target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:726629337826:targetgroup/info-final/de115e9d504e7a24"
  target_id        = "192.168.20.190"
}
