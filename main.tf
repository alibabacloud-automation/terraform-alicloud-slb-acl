resource "alicloud_slb_acl" "this_slb_acl" {
  name       = "${var.name}"
  ip_version = "${var.ip_version}"
  entry_list = "${var.entry_list}"
}

