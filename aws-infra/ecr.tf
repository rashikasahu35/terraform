resource "aws_ecr_repository" "ecr" {
  name                 = "acr${var.project_name}${var.env}"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}