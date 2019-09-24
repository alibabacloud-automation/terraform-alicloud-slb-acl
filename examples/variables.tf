variable "name" {
  default = "tf-example-module-slb-acl"
}

variable "entry_list" {
  default = [
    {
      entry   = "10.10.10.0/24"
      comment = "first"
    },
    {
      entry   = "168.10.10.0/24"
      comment = "second"
    },
    {
      entry   = "172.10.10.0/24"
      comment = "third"
    },
  ]
}

