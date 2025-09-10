resource "aws_iam_group_policy_attachment" "tfer--first_project_AdministratorAccess" {
  group      = "first_project"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
