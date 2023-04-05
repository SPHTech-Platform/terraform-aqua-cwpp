data "aquasec_enforcer_groups" "agent" {
  group_id = var.enforcer_group_id
}

data "aquasec_enforcer_groups" "kube_enforcer" {
  group_id = var.kube_enforcer_group_id
}
