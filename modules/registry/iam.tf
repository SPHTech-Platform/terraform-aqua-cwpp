resource "aws_iam_role" "aqua_cwpp" {
  name        = "aqua-cwpp-role"
  description = "Assumable Role for Aqua CWPP"

  path                 = "/"
  max_session_duration = "3600"

  assume_role_policy = data.aws_iam_policy_document.registry_trust.json
}

resource "aws_iam_role_policy_attachment" "aqua_cwpp" {
  count = length(local.aqua_cwpp_role_policy_arns)

  policy_arn = element(local.aqua_cwpp_role_policy_arns, count.index)
  role       = aws_iam_role.aqua_cwpp.name
}
