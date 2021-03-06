resource "aws_ecr_repository" "aws_ecr_repository" {
  name                 = "${var.aws_ecr_repository_name}-${var.github_repo_owner}"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

output "aws_ecr_repository_url" {
  value = aws_ecr_repository.aws_ecr_repository.repository_url
}