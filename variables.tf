variable "spring_cloud_storages" {
  description = <<EOT
Map of spring_cloud_storages, attributes below
Required:
    - name
    - spring_cloud_service_id
    - storage_account_key
    - storage_account_name
EOT

  type = map(object({
    name                    = string
    spring_cloud_service_id = string
    storage_account_key     = string
    storage_account_name    = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_storages : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_storages : (
        length(v.storage_account_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_storages : (
        length(v.storage_account_key) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

