output "synapse_linked_services_id" {
  description = "Map of id values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synapse_linked_services_additional_properties" {
  description = "Map of additional_properties values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.additional_properties if v.additional_properties != null && length(v.additional_properties) > 0 }
}
output "synapse_linked_services_annotations" {
  description = "Map of annotations values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "synapse_linked_services_description" {
  description = "Map of description values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.description if v.description != null && length(v.description) > 0 }
}
output "synapse_linked_services_integration_runtime" {
  description = "Map of integration_runtime values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.integration_runtime if v.integration_runtime != null && length(v.integration_runtime) > 0 }
}
output "synapse_linked_services_name" {
  description = "Map of name values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.name if v.name != null && length(v.name) > 0 }
}
output "synapse_linked_services_parameters" {
  description = "Map of parameters values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "synapse_linked_services_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.synapse_workspace_id if v.synapse_workspace_id != null && length(v.synapse_workspace_id) > 0 }
}
output "synapse_linked_services_type" {
  description = "Map of type values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.type if v.type != null && length(v.type) > 0 }
}
output "synapse_linked_services_type_properties_json" {
  description = "Map of type_properties_json values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.type_properties_json if v.type_properties_json != null && length(v.type_properties_json) > 0 }
}

