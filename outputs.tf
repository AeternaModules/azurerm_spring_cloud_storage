output "spring_cloud_storages" {
  description = "All spring_cloud_storage resources"
  value       = azurerm_spring_cloud_storage.spring_cloud_storages
}
output "spring_cloud_storages_name" {
  description = "List of name values across all spring_cloud_storages"
  value       = [for k, v in azurerm_spring_cloud_storage.spring_cloud_storages : v.name]
}
output "spring_cloud_storages_spring_cloud_service_id" {
  description = "List of spring_cloud_service_id values across all spring_cloud_storages"
  value       = [for k, v in azurerm_spring_cloud_storage.spring_cloud_storages : v.spring_cloud_service_id]
}
output "spring_cloud_storages_storage_account_key" {
  description = "List of storage_account_key values across all spring_cloud_storages"
  value       = [for k, v in azurerm_spring_cloud_storage.spring_cloud_storages : v.storage_account_key]
}
output "spring_cloud_storages_storage_account_name" {
  description = "List of storage_account_name values across all spring_cloud_storages"
  value       = [for k, v in azurerm_spring_cloud_storage.spring_cloud_storages : v.storage_account_name]
}

