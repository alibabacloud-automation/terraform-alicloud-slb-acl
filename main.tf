resource "alicloud_slb_acl" "this_slb_acl" {
  name       = var.name
  ip_version = var.ip_version
  dynamic "entry_list" {
    for_each = var.entry_list
    content {
      # TF-UPGRADE-TODO: The automatic upgrade tool can't predict
      # which keys might be set in maps assigned here, so it has
      # produced a comprehensive set here. Consider simplifying
      # this after confirming which keys can be set in practice.

      comment = lookup(entry_list.value, "comment", null)
      entry   = entry_list.value.entry
    }
  }
}

