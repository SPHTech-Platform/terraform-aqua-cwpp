<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_aquasec"></a> [aquasec](#requirement\_aquasec) | >= 0.8.20 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.7.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aquasec"></a> [aquasec](#provider\_aquasec) | 0.8.22 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_enforcers"></a> [enforcers](#module\_enforcers) | SPHTech-Platform/release/helm | ~> 0.1.0 |

## Resources

| Name | Type |
|------|------|
| [aquasec_enforcer_groups.agent](https://registry.terraform.io/providers/aquasecurity/aquasec/latest/docs/resources/enforcer_groups) | resource |
| [aquasec_enforcer_groups.kube_enforcer](https://registry.terraform.io/providers/aquasecurity/aquasec/latest/docs/resources/enforcer_groups) | resource |
| [aquasec_enforcer_groups.agent](https://registry.terraform.io/providers/aquasecurity/aquasec/latest/docs/data-sources/enforcer_groups) | data source |
| [aquasec_enforcer_groups.kube_enforcer](https://registry.terraform.io/providers/aquasecurity/aquasec/latest/docs/data-sources/enforcer_groups) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aqua_gateway_endpoint"></a> [aqua\_gateway\_endpoint](#input\_aqua\_gateway\_endpoint) | Aqua Gateway Endpoint | `string` | n/a | yes |
| <a name="input_aquasec_password"></a> [aquasec\_password](#input\_aquasec\_password) | aqua cloud password - Value set in Variables | `string` | n/a | yes |
| <a name="input_aquasec_username"></a> [aquasec\_username](#input\_aquasec\_username) | aqua cloud username - Value set in Variables | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Cluster name registered with Aqua in Infrastructure tab | `string` | `"aqua-sec"` | no |
| <a name="input_create_enforcer_group"></a> [create\_enforcer\_group](#input\_create\_enforcer\_group) | Create an Enforcer group | `bool` | `false` | no |
| <a name="input_create_kube_enforcer_group"></a> [create\_kube\_enforcer\_group](#input\_create\_kube\_enforcer\_group) | Create a Kube Enforcer group | `bool` | `false` | no |
| <a name="input_enabled_express_mode"></a> [enabled\_express\_mode](#input\_enabled\_express\_mode) | Install enforcer in EXPRESS MODE or not | `bool` | `true` | no |
| <a name="input_enforcer_group_id"></a> [enforcer\_group\_id](#input\_enforcer\_group\_id) | The ID of the Enforcer group | `string` | `"default"` | no |
| <a name="input_enforcer_group_id_prefix"></a> [enforcer\_group\_id\_prefix](#input\_enforcer\_group\_id\_prefix) | Prefix for group IDs | `string` | `"group-id-prefix"` | no |
| <a name="input_enforcer_version"></a> [enforcer\_version](#input\_enforcer\_version) | Enforcer version | `string` | `"2022.4"` | no |
| <a name="input_helm_config"></a> [helm\_config](#input\_helm\_config) | Helm provider config for aqua security enforcer. | `any` | `{}` | no |
| <a name="input_helm_config_defaults"></a> [helm\_config\_defaults](#input\_helm\_config\_defaults) | Helm provider default config for aqua security enforcer. | `any` | <pre>{<br>  "chart": "kube-enforcer",<br>  "create_namespace": true,<br>  "description": "Aqua security enforcer helm Chart deployment configuration",<br>  "name": "aqua-helm",<br>  "namespace": "aqua",<br>  "repository": "https://helm.aquasec.com",<br>  "version": "2022.4.12"<br>}</pre> | no |
| <a name="input_kube_enforcer_group_id"></a> [kube\_enforcer\_group\_id](#input\_kube\_enforcer\_group\_id) | The ID of the Kube Enforcer group | `string` | `"default kube enforcer group"` | no |
| <a name="input_platform"></a> [platform](#input\_platform) | Orchestration platform name | `string` | `"eks"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
