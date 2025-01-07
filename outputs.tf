output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

output "storage_account_id" {
  value       = azurerm_storage_account.securestorage.id
  description = "The storage account name"
}