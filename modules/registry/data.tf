data "aws_region" "current" {}

data "aws_iam_policy_document" "registry_trust" {
  statement {
    effect = "Allow"

    actions = [
      "sts:AssumeRole",
    ]

    principals {
      type        = "AWS"
      identifiers = var.assume_role_arn
    }
  }
}
