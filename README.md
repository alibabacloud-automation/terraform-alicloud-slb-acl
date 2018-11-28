Alicloud SLB Acl Terraform Module
terraform-alicloud-slb-acl
---

This terraform module supports to create access control list for the load balancer.

These type of resource is supported:
* [alicloud_slb_acl](https://www.terraform.io/docs/providers/alicloud/r/slb_acl.html)

----------------------

Usage
-----
You can use this in your terraform template with the following steps.

1. Adding a module resource to your template, e.g. main.tf

```hcl
module "slb-acl" {
  source = "terraform-alicloud-modules/slb-acl/alicloud"

  #variables for slb acl

  name = "slb-acl"
  ip_version = "ipv4"
  entry_list = [
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

```

2. Setting `access_key` and `secret_key` values through environment variables:

    - ALICLOUD_ACCESS_KEY
    - ALICLOUD_SECRET_KEY
    - ALICLOUD_REGION

3. Get up and running

* Init phase

        terraform init

* Planning phase

        terraform plan

* Apply phase

        terraform apply

* Destroy

        terraform destroy

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name  | The name of  slb acl    |  string     |     terraform-alicloud-slb-acl | no |
| ip_version  | The ip version of slb acl    |  string     |     ipv4 | no |
| entry_list  | The acl entry list of slb acl  |   list  |     |   yes  |

- acl entry

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| entry    | An IP addresses or CIDR blocks    |  string     |     | yes |
| comment  | The comment of slb acl entry      |  string     |     | yes |

## Outputs

| Name | Description |
|------|-------------|
| this_slb_acl_id          |    slb acl id created     |
| this_slb_acl_name        |    slb acl name           |
| this_slb_acl_entry_list  |    slb acl entry list     |
| this_slb_acl_ip_version  |    slb acl ip verison   |

Authors
---------
Created and maintained by zhongbo Wang(@wzb56, zhongbo.wzb@alibaba-inc.com)

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)




