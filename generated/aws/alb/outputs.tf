output "aws_lb_listener_rule_tfer_Board_TG_id" {
  value = aws_lb_listener_rule.tfer--Board-TG-rule.id
}

output "aws_lb_listener_rule_tfer_User_TG_id" {
  value = aws_lb_listener_rule.tfer--User-TG-rule.id
}

output "aws_lb_listener_rule_tfer_News_TG_id" {
  value = aws_lb_listener_rule.tfer--News-TG-rule.id
}

output "aws_lb_listener_rule_tfer_Event_TG_id" {
  value = aws_lb_listener_rule.tfer--Event-TG-rule.id
}

output "aws_lb_listener_tfer_DugOut_ALB_id" {
  value = aws_lb_listener.tfer--DugOut-ALB.id
}

output "aws_lb_listener_tfer_info_final_id" {
  value = aws_lb_listener.tfer--info-final.id
}

output "aws_lb_target_group_attachment_Board_TG_id" {
  value = aws_lb_target_group_attachment.tfer--Board-TG-attachment.id
}

output "aws_lb_target_group_attachment_Event_TG_id" {
  value = aws_lb_target_group_attachment.tfer--Event-TG-attachment.id
}

output "aws_lb_target_group_attachment_User_TG_id" {
  value = aws_lb_target_group_attachment.tfer--User-TG-attachment.id
}

output "aws_lb_target_group_attachment_info_final_id" {
  value = aws_lb_target_group_attachment.tfer--info-final-attachment.id
}

output "aws_lb_target_group_tfer_Board_TG_id" {
  value = aws_lb_target_group.tfer--Board-TG.id
}

output "aws_lb_target_group_tfer_Event_TG_id" {
  value = aws_lb_target_group.tfer--Event-TG.id
}

output "aws_lb_target_group_tfer_News_TG_id" {
  value = aws_lb_target_group.tfer--News-TG.id
}

output "aws_lb_target_group_tfer_User_TG_id" {
  value = aws_lb_target_group.tfer--User-TG.id
}

output "aws_lb_target_group_tfer_info_final_id" {
  value = aws_lb_target_group.tfer--info-final.id
}

output "aws_lb_tfer_DugOut_ALB_id" {
  value = aws_lb.tfer--DugOut-ALB.id
}

output "aws_lb_tfer_info_final_id" {
  value = aws_lb.tfer--info-final.id
}
