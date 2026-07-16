output "spring_cloud_storages_id" {
  description = "Map of id values across all spring_cloud_storages, keyed the same as var.spring_cloud_storages"
  value       = { for k, v in azurerm_spring_cloud_storage.spring_cloud_storages : k => v.id if v.id != null && length(v.id) > 0 }
}
output "spring_cloud_storages_name" {
  description = "Map of name values across all spring_cloud_storages, keyed the same as var.spring_cloud_storages"
  value       = { for k, v in azurerm_spring_cloud_storage.spring_cloud_storages : k => v.name if v.name != null && length(v.name) > 0 }
}
output "spring_cloud_storages_spring_cloud_service_id" {
  description = "Map of spring_cloud_service_id values across all spring_cloud_storages, keyed the same as var.spring_cloud_storages"
  value       = { for k, v in azurerm_spring_cloud_storage.spring_cloud_storages : k => v.spring_cloud_service_id if v.spring_cloud_service_id != null && length(v.spring_cloud_service_id) > 0 }
}
output "spring_cloud_storages_storage_account_key" {
  description = "Map of storage_account_key values across all spring_cloud_storages, keyed the same as var.spring_cloud_storages"
  value       = { for k, v in azurerm_spring_cloud_storage.spring_cloud_storages : k => v.storage_account_key if v.storage_account_key != null && length(v.storage_account_key) > 0 }
}
output "spring_cloud_storages_storage_account_name" {
  description = "Map of storage_account_name values across all spring_cloud_storages, keyed the same as var.spring_cloud_storages"
  value       = { for k, v in azurerm_spring_cloud_storage.spring_cloud_storages : k => v.storage_account_name if v.storage_account_name != null && length(v.storage_account_name) > 0 }
}

