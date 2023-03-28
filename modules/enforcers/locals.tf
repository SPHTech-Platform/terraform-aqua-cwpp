locals {
  helm_config = merge(
    var.helm_config_defaults,
    var.helm_config,
    { values = local.helm_values_defaults }
  )

  helm_values_defaults = [templatefile("${path.module}/templates/values.yaml", {
    kube_enforcer_token   = var.create_kube_enforcer_group ? aquasec_enforcer_groups.kube_enforcer.token : data.aquasec_enforcer_groups.kube_enforcer.token,
    enforcer_token        = var.create_enforcer_group ? aquasec_enforcer_groups.agent.token : data.aquasec_enforcer_groups.agent.token,
    enforcer_version      = var.enforcer_version,
    enabled_express_mode  = var.enabled_express_mode,
    platform              = var.platform,
    aqua_gateway_endpoint = var.aqua_gateway_endpoint,
    aquasec_username      = var.aquasec_username,
    aquasec_password      = var.aquasec_password,
    cluster_name          = var.cluster_name,
  })]
}
