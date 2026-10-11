variable "ns_record_sets" {
  description = <<EOT
Map of ns_record_sets, attributes below
Required:
    - name
    - nameservers
    - zone
Optional:
    - ttl
EOT

  type = map(object({
    name        = string
    nameservers = set(string)
    zone        = string
    ttl         = optional(number)
  }))
}

