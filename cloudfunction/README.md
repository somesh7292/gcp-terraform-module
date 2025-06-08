<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.12.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_cloudfunctions2_function.function](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions2_function) | resource |
| [google_storage_bucket.bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |
| [google_storage_bucket_object.object](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_available_memory"></a> [available\_memory](#input\_available\_memory) | Available memory for cloud function | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description of the cloud function | `string` | n/a | yes |
| <a name="input_entry_point"></a> [entry\_point](#input\_entry\_point) | Entry point of cloud function | `string` | n/a | yes |
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | Name of the cloud function | `string` | n/a | yes |
| <a name="input_function_zip_path"></a> [function\_zip\_path](#input\_function\_zip\_path) | Path of zip file for cloud function | `string` | n/a | yes |
| <a name="input_ingress_settings"></a> [ingress\_settings](#input\_ingress\_settings) | Ingress setting for cloud function | `string` | n/a | yes |
| <a name="input_key"></a> [key](#input\_key) | Name of the environment variable. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | default location | `string` | `"us-central1"` | no |
| <a name="input_max_instance_count"></a> [max\_instance\_count](#input\_max\_instance\_count) | Maximum cloud function instance count | `number` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project id | `string` | n/a | yes |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | Runtime of cloud function | `string` | n/a | yes |
| <a name="input_secret_id"></a> [secret\_id](#input\_secret\_id) | Name of the secret in secret manager | `string` | n/a | yes |
| <a name="input_secret_key_trigger"></a> [secret\_key\_trigger](#input\_secret\_key\_trigger) | Version of a secret | `any` | n/a | yes |
| <a name="input_timeout_seconds"></a> [timeout\_seconds](#input\_timeout\_seconds) | Timeout for cloud function | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | n/a |
<!-- END_TF_DOCS -->