##############################################################
#variables for alicloud_slb_acl
##############################################################
name = "tf-example-module-slb-acl-update"
entry_list = [
  {
    entry   = "10.10.10.0/24"
    comment = "first-update"
  },
  {
    entry   = "168.10.10.0/24"
    comment = "second-update"
  },
  {
    entry   = "172.10.10.0/24"
    comment = "third-update"
  },
]
