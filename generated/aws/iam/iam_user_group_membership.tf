resource "aws_iam_user_group_membership" "tfer--hje-002F-first_project" {
  groups = ["first_project"]
  user   = "hje"
}

resource "aws_iam_user_group_membership" "tfer--jmg-002F-first_project" {
  groups = ["first_project"]
  user   = "jmg"
}

resource "aws_iam_user_group_membership" "tfer--ljw-002F-first_project" {
  groups = ["first_project"]
  user   = "ljw"
}

resource "aws_iam_user_group_membership" "tfer--shs-002F-first_project" {
  groups = ["first_project"]
  user   = "shs"
}
