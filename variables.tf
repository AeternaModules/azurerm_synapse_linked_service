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
  # --- Unconfirmed validation candidates, derived from azurerm_synapse_linked_service's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] !ok
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] err != nil
  # path: type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

