resource "dns_ns_record_set" "ns_record_sets" {
  for_each = var.ns_record_sets

  name        = each.value.name
  nameservers = each.value.nameservers
  zone        = each.value.zone
  ttl         = each.value.ttl
}

