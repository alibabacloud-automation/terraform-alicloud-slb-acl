module "slb-acl" {
  source = "../"
  name = "${var.name}"
  entry_list="${var.entry_list}"
}
