output "storage_key_lookup_id" {
  description = "Map of id values across all storage_key_lookup, keyed the same as var.storage_key_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_storage_key.storage_key_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_key_lookup_descriptor" {
  description = "Map of descriptor values across all storage_key_lookup, keyed the same as var.storage_key_lookup except keys with no descriptor are omitted"
  value       = { for k, v in data.azuredevops_storage_key.storage_key_lookup : k => v.descriptor if v.descriptor != null && length(v.descriptor) > 0 }
}
output "storage_key_lookup_storage_key" {
  description = "Map of storage_key values across all storage_key_lookup, keyed the same as var.storage_key_lookup except keys with no storage_key are omitted"
  value       = { for k, v in data.azuredevops_storage_key.storage_key_lookup : k => v.storage_key if v.storage_key != null && length(v.storage_key) > 0 }
}

