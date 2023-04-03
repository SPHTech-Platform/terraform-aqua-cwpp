resource "aquasec_integration_registry" "integration_registry" {
  name = "${var.prefix}-ecr"

  description = "AWS Registry on ${var.prefix}"

  type = var.type
  url  = var.region

  dynamic "options" {
    for_each = [
      {
        option = "ARNRole"
        value  = aws_iam_role.aqua_cwpp.arn
      },
    ]

    content {
      option = options.value["option"]
      value  = try(options.value["value"], null)
    }
  }

  auto_cleanup       = true
  auto_pull          = true
  auto_pull_interval = 1
  auto_pull_max      = 50
}
