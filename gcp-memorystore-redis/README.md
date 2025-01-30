# gcp-gcs
<!-- BEGIN_TF_DOCS -->


### Providers

| Name | Version |
|------|---------|
| google | n/a |
| random | n/a |

### Resources

| Name | Type |
|------|------|
| [google_redis_instance.memorystore](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/redis_instance) | resource |
| [random_string.memorystore_instance_name](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [google_compute_network.vpc](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_network) | data source |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| access\_token | n/a | `string` | n/a | yes |
| app\_id | n/a | `string` | n/a | yes |
| env\_id | n/a | `string` | n/a | yes |
| project\_id | n/a | `string` | n/a | yes |
| region | n/a | `string` | n/a | yes |
| res\_id | n/a | `string` | n/a | yes |
| network | n/a | `string` | `"default"` | no |

### Outputs

| Name | Description |
|------|-------------|
| host | n/a |
| password | n/a |
| port | n/a |
| username | n/a |
<!-- END_TF_DOCS -->