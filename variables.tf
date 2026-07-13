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
  # --- Unconfirmed validation candidates, derived from azurerm_spring_cloud_storage's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: spring_cloud_service_id
  #   source:    [from validate.SpringCloudServiceID] !ok
  # path: spring_cloud_service_id
  #   source:    [from validate.SpringCloudServiceID] err != nil
  # path: storage_account_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: storage_account_key
  #   condition: length(value) > 0
  #   message:   must not be empty
}

