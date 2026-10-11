variable "osp_gateway_subscriptions_lookup" {
  description = <<EOT
Map of osp_gateway_subscriptions_lookup, attributes below
Required:
    - compartment_id
    - osp_home_region
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id  = string
    osp_home_region = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

