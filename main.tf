data "oci_osp_gateway_subscriptions" "osp_gateway_subscriptions_lookup" {
  for_each = var.osp_gateway_subscriptions_lookup

  compartment_id  = each.value.compartment_id
  osp_home_region = each.value.osp_home_region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

