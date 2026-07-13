variable "synapse_linked_services" {
  description = <<EOT
Map of synapse_linked_services, attributes below
Required:
    - name
    - synapse_workspace_id
    - type
    - type_properties_json
Optional:
    - additional_properties
    - annotations
    - description
    - parameters
    - integration_runtime (block):
        - name (required)
        - parameters (optional)
EOT

  type = map(object({
    name                  = string
    synapse_workspace_id  = string
    type                  = string
    type_properties_json  = string
    additional_properties = optional(map(string))
    annotations           = optional(list(string))
    description           = optional(string)
    parameters            = optional(map(string))
    integration_runtime = optional(object({
      name       = string
      parameters = optional(map(string))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.synapse_linked_services : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_linked_services : (
        v.integration_runtime == null || (length(v.integration_runtime.name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

