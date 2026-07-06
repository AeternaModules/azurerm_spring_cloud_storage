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
  # --- Unconfirmed validation candidates, derived from azurerm_spring_cloud_storage's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: spring_cloud_service_id
  #   source:    [from validate.SpringCloudServiceID] !ok
  # path: spring_cloud_service_id
  #   source:    [from validate.SpringCloudServiceID] err != nil
}

