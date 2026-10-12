resource "vault_kv_secret_v2" "kv_secret_v2s" {
  for_each = var.kv_secret_v2s

  mount                = each.value.mount
  name                 = each.value.name
  cas                  = each.value.cas
  data_json            = each.value.data_json
  data_json_wo         = each.value.data_json_wo
  data_json_wo_version = each.value.data_json_wo_version
  delete_all_versions  = each.value.delete_all_versions
  disable_read         = each.value.disable_read
  namespace            = each.value.namespace
  options              = each.value.options

  dynamic "custom_metadata" {
    for_each = each.value.custom_metadata != null ? [each.value.custom_metadata] : []
    content {
      cas_required         = custom_metadata.value.cas_required
      data                 = custom_metadata.value.data
      delete_version_after = custom_metadata.value.delete_version_after
      max_versions         = custom_metadata.value.max_versions
    }
  }
}

