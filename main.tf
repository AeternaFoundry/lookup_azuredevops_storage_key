data "azuredevops_storage_key" "storage_key_lookup" {
  for_each = var.storage_key_lookup

  descriptor = each.value.descriptor

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

