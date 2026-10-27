output "storage_key_lookup_id" {
  description = "Map of id values across all storage_key_lookup, keyed the same as var.storage_key_lookup"
  value       = { for k, v in data.azuredevops_storage_key.storage_key_lookup : k => v.id }
}
output "storage_key_lookup_descriptor" {
  description = "Map of descriptor values across all storage_key_lookup, keyed the same as var.storage_key_lookup"
  value       = { for k, v in data.azuredevops_storage_key.storage_key_lookup : k => v.descriptor }
}
output "storage_key_lookup_storage_key" {
  description = "Map of storage_key values across all storage_key_lookup, keyed the same as var.storage_key_lookup"
  value       = { for k, v in data.azuredevops_storage_key.storage_key_lookup : k => v.storage_key }
}

