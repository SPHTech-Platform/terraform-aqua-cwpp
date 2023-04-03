data "aws_region" "current" {}

data "aws_iam_policy_document" "registry_trust" {
  statement {
    effect = "Allow"

    actions = [
      "sts:AssumeRole",
    ]

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::402136654778:role/yvbbb-293e75e127-worker-role"]
    }
  }
}
