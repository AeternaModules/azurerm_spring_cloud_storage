output "spring_cloud_storages_name" {
  description = "Map of name values across all spring_cloud_storages, keyed the same as var.spring_cloud_storages"
  value       = { for k, v in azurerm_spring_cloud_storage.spring_cloud_storages : k => v.name }
}
output "spring_cloud_storages_spring_cloud_service_id" {
  description = "Map of spring_cloud_service_id values across all spring_cloud_storages, keyed the same as var.spring_cloud_storages"
  value       = { for k, v in azurerm_spring_cloud_storage.spring_cloud_storages : k => v.spring_cloud_service_id }
}
output "spring_cloud_storages_storage_account_key" {
  description = "Map of storage_account_key values across all spring_cloud_storages, keyed the same as var.spring_cloud_storages"
  value       = { for k, v in azurerm_spring_cloud_storage.spring_cloud_storages : k => v.storage_account_key }
}
output "spring_cloud_storages_storage_account_name" {
  description = "Map of storage_account_name values across all spring_cloud_storages, keyed the same as var.spring_cloud_storages"
  value       = { for k, v in azurerm_spring_cloud_storage.spring_cloud_storages : k => v.storage_account_name }
}

