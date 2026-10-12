variable "kv_secret_v2s" {
  description = <<EOT
Map of kv_secret_v2s, attributes below
Required:
    - mount
    - name
Optional:
    - cas
    - data_json
    - data_json_wo
    - data_json_wo_version
    - delete_all_versions
    - disable_read
    - namespace
    - options
    - custom_metadata (block):
        - cas_required (optional)
        - data (optional)
        - delete_version_after (optional)
        - max_versions (optional)
EOT

  type = map(object({
    mount                = string
    name                 = string
    cas                  = optional(number)
    data_json            = optional(string)
    data_json_wo         = optional(string)
    data_json_wo_version = optional(number)
    delete_all_versions  = optional(bool)
    disable_read         = optional(bool)
    namespace            = optional(string)
    options              = optional(map(string))
    custom_metadata = optional(object({
      cas_required         = optional(bool)
      data                 = optional(map(string))
      delete_version_after = optional(number)
      max_versions         = optional(number)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

