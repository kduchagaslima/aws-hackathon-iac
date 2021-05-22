resource "aws_ecr_repository" "hackathon-app" {
  name                 = "hackathon-app"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}