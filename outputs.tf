output "kv_secret_v2s_id" {
  description = "Map of id values across all kv_secret_v2s, keyed the same as var.kv_secret_v2s except keys with no id are omitted"
  value       = { for k, v in vault_kv_secret_v2.kv_secret_v2s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kv_secret_v2s_cas" {
  description = "Map of cas values across all kv_secret_v2s, keyed the same as var.kv_secret_v2s except keys with no cas are omitted"
  value       = { for k, v in vault_kv_secret_v2.kv_secret_v2s : k => v.cas if v.cas != null }
}
output "kv_secret_v2s_custom_metadata" {
  description = "Map of custom_metadata values across all kv_secret_v2s, keyed the same as var.kv_secret_v2s except keys with no custom_metadata are omitted"
  value       = { for k, v in vault_kv_secret_v2.kv_secret_v2s : k => one(v.custom_metadata) if v.custom_metadata != null && length(v.custom_metadata) > 0 }
}
output "kv_secret_v2s_data" {
  description = "Map of data values across all kv_secret_v2s, keyed the same as var.kv_secret_v2s except keys with no data are omitted"
  value       = { for k, v in vault_kv_secret_v2.kv_secret_v2s : k => v.data if v.data != null && length(v.data) > 0 }
  sensitive   = true
}
output "kv_secret_v2s_data_json" {
  description = "Map of data_json values across all kv_secret_v2s, keyed the same as var.kv_secret_v2s except keys with no data_json are omitted"
  value       = { for k, v in vault_kv_secret_v2.kv_secret_v2s : k => v.data_json if v.data_json != null && length(v.data_json) > 0 }
  sensitive   = true
}
output "kv_secret_v2s_data_json_wo_version" {
  description = "Map of data_json_wo_version values across all kv_secret_v2s, keyed the same as var.kv_secret_v2s except keys with no data_json_wo_version are omitted"
  value       = { for k, v in vault_kv_secret_v2.kv_secret_v2s : k => v.data_json_wo_version if v.data_json_wo_version != null }
}
output "kv_secret_v2s_delete_all_versions" {
  description = "Map of delete_all_versions values across all kv_secret_v2s, keyed the same as var.kv_secret_v2s except keys with no delete_all_versions are omitted"
  value       = { for k, v in vault_kv_secret_v2.kv_secret_v2s : k => v.delete_all_versions if v.delete_all_versions != null }
}
output "kv_secret_v2s_disable_read" {
  description = "Map of disable_read values across all kv_secret_v2s, keyed the same as var.kv_secret_v2s except keys with no disable_read are omitted"
  value       = { for k, v in vault_kv_secret_v2.kv_secret_v2s : k => v.disable_read if v.disable_read != null }
}
output "kv_secret_v2s_metadata" {
  description = "Map of metadata values across all kv_secret_v2s, keyed the same as var.kv_secret_v2s except keys with no metadata are omitted"
  value       = { for k, v in vault_kv_secret_v2.kv_secret_v2s : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "kv_secret_v2s_mount" {
  description = "Map of mount values across all kv_secret_v2s, keyed the same as var.kv_secret_v2s except keys with no mount are omitted"
  value       = { for k, v in vault_kv_secret_v2.kv_secret_v2s : k => v.mount if v.mount != null && length(v.mount) > 0 }
}
output "kv_secret_v2s_name" {
  description = "Map of name values across all kv_secret_v2s, keyed the same as var.kv_secret_v2s except keys with no name are omitted"
  value       = { for k, v in vault_kv_secret_v2.kv_secret_v2s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kv_secret_v2s_namespace" {
  description = "Map of namespace values across all kv_secret_v2s, keyed the same as var.kv_secret_v2s except keys with no namespace are omitted"
  value       = { for k, v in vault_kv_secret_v2.kv_secret_v2s : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "kv_secret_v2s_options" {
  description = "Map of options values across all kv_secret_v2s, keyed the same as var.kv_secret_v2s except keys with no options are omitted"
  value       = { for k, v in vault_kv_secret_v2.kv_secret_v2s : k => v.options if v.options != null && length(v.options) > 0 }
}
output "kv_secret_v2s_path" {
  description = "Map of path values across all kv_secret_v2s, keyed the same as var.kv_secret_v2s except keys with no path are omitted"
  value       = { for k, v in vault_kv_secret_v2.kv_secret_v2s : k => v.path if v.path != null && length(v.path) > 0 }
}

