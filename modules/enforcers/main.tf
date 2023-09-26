resource "aquasec_enforcer_groups" "agent" {
  count = var.create_enforcer_group ? 1 : 0

  group_id = "${var.enforcer_group_id_prefix}-agent"
  type     = "agent"
  enforce  = true
  orchestrator {
    type      = "kubernetes"
    namespace = var.helm_config_defaults.namespace
  }
}

resource "aquasec_enforcer_groups" "kube_enforcer" {
  count = var.create_kube_enforcer_group ? 1 : 0

  group_id = "${var.enforcer_group_id_prefix}-kube-enforcer"
  type     = "kube_enforcer"
  enforce  = true
  orchestrator {
    type      = "kubernetes"
    namespace = var.helm_config_defaults.namespace
  }
}

module "enforcers" {
  #checkov:skip=CKV_TF_1: "Ensure Terraform module sources use a commit hash"
  source  = "SPHTech-Platform/release/helm"
  version = "~> 0.1.0"

  helm_config = local.helm_config
}
