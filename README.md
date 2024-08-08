# Deprecated

Thank you for your interest in Alibaba Cloud Terraform Module. This Module will be out of maintenance as of today and will be officially taken offline in the future. We recommend you to use [terraform-alicloud-slb](https://registry.terraform.io/modules/alibaba/slb/alicloud/latest) as an alternative. More available Modules can be searched in [Alibaba Cloud Terraform Module](https://registry.terraform.io/browse/modules?provider=alibaba).

Thank you again for your understanding and cooperation.

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

## Notes
From the version v1.2.0, the module has removed the following `provider` setting:

```hcl
provider "alicloud" {
  version              = ">=1.56.0"
  region               = var.region != "" ? var.region : null
  configuration_source = "terraform-alicloud-modules/slb-acl"
}
```

If you still want to use the `provider` setting to apply this module, you can specify a supported version, like 1.1.0:

```hcl
module "slb-acl" {
  source     = "terraform-alicloud-modules/slb-acl/alicloud"
  version    = "1.1.0"
  region     = "cn-beijing"
  name       = "slb-acl"
  ip_version = "ipv4"
  // ...
}
```

If you want to upgrade the module to 1.2.0 or higher in-place, you can define a provider which same region with
previous region:

```hcl
provider "alicloud" {
  region = "cn-beijing"
}
module "slb-acl" {
  source     = "terraform-alicloud-modules/slb-acl/alicloud"
  name       = "slb-acl"
  ip_version = "ipv4"
  // ...
}
```
or specify an alias provider with a defined region to the module using `providers`:

```hcl
provider "alicloud" {
  region = "cn-beijing"
  alias  = "bj"
}
module "slb-acl" {
  source     = "terraform-alicloud-modules/slb-acl/alicloud"
  providers  = {
    alicloud = alicloud.bj
  }
  name       = "slb-acl"
  ip_version = "ipv4"
  // ...
}
```

and then run `terraform init` and `terraform apply` to make the defined provider effect to the existing module state.

More details see [How to use provider in the module](https://www.terraform.io/docs/language/modules/develop/providers.html#passing-providers-explicitly)

## Terraform versions

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.56.0 |

Authors
---------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)




