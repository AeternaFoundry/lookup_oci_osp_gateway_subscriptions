output "osp_gateway_subscriptions_lookup_id" {
  description = "Map of id values across all osp_gateway_subscriptions_lookup, keyed the same as var.osp_gateway_subscriptions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_osp_gateway_subscriptions.osp_gateway_subscriptions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "osp_gateway_subscriptions_lookup_compartment_id" {
  description = "Map of compartment_id values across all osp_gateway_subscriptions_lookup, keyed the same as var.osp_gateway_subscriptions_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_osp_gateway_subscriptions.osp_gateway_subscriptions_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "osp_gateway_subscriptions_lookup_filter" {
  description = "Map of filter values across all osp_gateway_subscriptions_lookup, keyed the same as var.osp_gateway_subscriptions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_osp_gateway_subscriptions.osp_gateway_subscriptions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "osp_gateway_subscriptions_lookup_osp_home_region" {
  description = "Map of osp_home_region values across all osp_gateway_subscriptions_lookup, keyed the same as var.osp_gateway_subscriptions_lookup except keys with no osp_home_region are omitted"
  value       = { for k, v in data.oci_osp_gateway_subscriptions.osp_gateway_subscriptions_lookup : k => v.osp_home_region if v.osp_home_region != null && length(v.osp_home_region) > 0 }
}
output "osp_gateway_subscriptions_lookup_subscription_collection" {
  description = "Map of subscription_collection values across all osp_gateway_subscriptions_lookup, keyed the same as var.osp_gateway_subscriptions_lookup except keys with no subscription_collection are omitted"
  value       = { for k, v in data.oci_osp_gateway_subscriptions.osp_gateway_subscriptions_lookup : k => v.subscription_collection if v.subscription_collection != null && length(v.subscription_collection) > 0 }
}

