locals {
  this_slb_acl_id         = alicloud_slb_acl.this_slb_acl.id
  this_slb_acl_name       = alicloud_slb_acl.this_slb_acl.name
  this_slb_acl_ip_version = alicloud_slb_acl.this_slb_acl.ip_version
  this_slb_acl_entry_list = alicloud_slb_acl.this_slb_acl.entry_list
}

output "this_slb_acl_id" {
  value = local.this_slb_acl_id
}

output "this_slb_acl_name" {
  value = local.this_slb_acl_name
}

output "this_slb_acl_ip_version" {
  value = local.this_slb_acl_ip_version
}

output "this_slb_acl_entry_list" {
  value = local.this_slb_acl_entry_list
}

