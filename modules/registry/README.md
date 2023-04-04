<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_aquasec"></a> [aquasec](#requirement\_aquasec) | >= 0.8.20 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.28 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aquasec"></a> [aquasec](#provider\_aquasec) | 0.8.24 |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.61.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aquasec_integration_registry.integration_registry](https://registry.terraform.io/providers/aquasecurity/aquasec/latest/docs/resources/integration_registry) | resource |
| [aws_iam_role.aqua_cwpp](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.aqua_cwpp](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.registry_trust](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Prefix for the registry | `string` | `"aws"` | no |
| <a name="input_region"></a> [region](#input\_region) | region of the registry | `string` | `"ap-southeast-1"` | no |
| <a name="input_type"></a> [type](#input\_type) | Registry type (HUB / V1 / V2 / ENGINE / AWS / GCR). | `string` | `"AWS"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->