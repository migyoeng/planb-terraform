resource "aws_ecr_repository" "tfer--plan-b-002F-board-service" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "plan-b/board-service"
  region               = "ap-northeast-2"
}

resource "aws_ecr_repository" "tfer--plan-b-002F-event-service" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "plan-b/event-service"
  region               = "ap-northeast-2"
}

resource "aws_ecr_repository" "tfer--plan-b-002F-news-service" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "plan-b/news-service"
  region               = "ap-northeast-2"
}

resource "aws_ecr_repository" "tfer--plan-b-002F-user-service" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "plan-b/user-service"
  region               = "ap-northeast-2"
}
