resource "aws_iam_user" "tfer--AIDA2SLT3ZLRFY2VWL4NA" {
  force_destroy = "false"
  name          = "cloudwatchagent-onprem"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDA2SLT3ZLRH7Z7IQIRB" {
  force_destroy = "false"
  name          = "jmg"
  path          = "/"

  tags = {
    AKIA2SLT3ZLRCXIHF7U5 = "GIthub Actions - board service"
  }

  tags_all = {
    AKIA2SLT3ZLRCXIHF7U5 = "GIthub Actions - board service"
  }
}

resource "aws_iam_user" "tfer--AIDA2SLT3ZLRHQ4KFN3LK" {
  force_destroy = "false"
  name          = "dugout-dev"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDA2SLT3ZLRMLDJ4IZYV" {
  force_destroy = "false"
  name          = "shs"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDA2SLT3ZLRO4ZDCBBBJ" {
  force_destroy = "false"
  name          = "hje"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDA2SLT3ZLRORI4E3HDQ" {
  force_destroy = "false"
  name          = "ljw"
  path          = "/"
}
