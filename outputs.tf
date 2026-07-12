output "synapse_linked_services_additional_properties" {
  description = "Map of additional_properties values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.additional_properties }
}
output "synapse_linked_services_annotations" {
  description = "Map of annotations values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.annotations }
}
output "synapse_linked_services_description" {
  description = "Map of description values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.description }
}
output "synapse_linked_services_integration_runtime" {
  description = "Map of integration_runtime values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.integration_runtime }
}
output "synapse_linked_services_name" {
  description = "Map of name values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.name }
}
output "synapse_linked_services_parameters" {
  description = "Map of parameters values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.parameters }
}
output "synapse_linked_services_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.synapse_workspace_id }
}
output "synapse_linked_services_type" {
  description = "Map of type values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.type }
}
output "synapse_linked_services_type_properties_json" {
  description = "Map of type_properties_json values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = { for k, v in azurerm_synapse_linked_service.synapse_linked_services : k => v.type_properties_json }
}

