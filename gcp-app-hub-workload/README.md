# gcp-gcs
<!-- BEGIN_TF_DOCS -->


### Providers

| Name | Version |
|------|---------|
| google | n/a |

### Resources

| Name | Type |
|------|------|
| [google_apphub_service.apphub_service](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/apphub_service) | resource |
| [google_apphub_workload.apphub_workload](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/apphub_workload) | resource |
| [google_apphub_application.apphub_app](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/apphub_application) | data source |
| [google_apphub_discovered_service.apphub_service](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/apphub_discovered_service) | data source |
| [google_apphub_discovered_workload.apphub_workload](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/apphub_discovered_workload) | data source |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| access\_token | n/a | `string` | n/a | yes |
| app\_id | n/a | `string` | n/a | yes |
| env\_id | n/a | `string` | n/a | yes |
| env\_type | n/a | `string` | n/a | yes |
| gke\_name | n/a | `string` | n/a | yes |
| gke\_project\_number | n/a | `string` | n/a | yes |
| namespace | n/a | `string` | n/a | yes |
| project\_id | n/a | `string` | n/a | yes |
| region | n/a | `string` | n/a | yes |
| res\_id | n/a | `string` | n/a | yes |
| create\_service | n/a | `bool` | `true` | no |
<!-- END_TF_DOCS -->