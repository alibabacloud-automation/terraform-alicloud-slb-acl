module "slb-acl" {
  source     = "../../"
  name       = var.name
  entry_list = var.entry_list
  ip_version = var.ip_version
}

