# gcp-gcs
<!-- BEGIN_TF_DOCS -->


### Providers

| Name | Version |
|------|---------|
| google | n/a |

### Resources

| Name | Type |
|------|------|
| [google_project_iam_member.vertex_ai_members](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| access\_token | n/a | `string` | n/a | yes |
| app\_id | n/a | `string` | n/a | yes |
| env\_id | n/a | `string` | n/a | yes |
| principals | n/a | `set(string)` | n/a | yes |
| project\_id | n/a | `string` | n/a | yes |
| res\_id | n/a | `string` | n/a | yes |
<!-- END_TF_DOCS -->