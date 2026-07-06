output "synapse_linked_services" {
  description = "All synapse_linked_service resources"
  value       = azurerm_synapse_linked_service.synapse_linked_services
}
output "synapse_linked_services_additional_properties" {
  description = "List of additional_properties values across all synapse_linked_services"
  value       = [for k, v in azurerm_synapse_linked_service.synapse_linked_services : v.additional_properties]
}
output "synapse_linked_services_annotations" {
  description = "List of annotations values across all synapse_linked_services"
  value       = [for k, v in azurerm_synapse_linked_service.synapse_linked_services : v.annotations]
}
output "synapse_linked_services_description" {
  description = "List of description values across all synapse_linked_services"
  value       = [for k, v in azurerm_synapse_linked_service.synapse_linked_services : v.description]
}
output "synapse_linked_services_integration_runtime" {
  description = "List of integration_runtime values across all synapse_linked_services"
  value       = [for k, v in azurerm_synapse_linked_service.synapse_linked_services : v.integration_runtime]
}
output "synapse_linked_services_name" {
  description = "List of name values across all synapse_linked_services"
  value       = [for k, v in azurerm_synapse_linked_service.synapse_linked_services : v.name]
}
output "synapse_linked_services_parameters" {
  description = "List of parameters values across all synapse_linked_services"
  value       = [for k, v in azurerm_synapse_linked_service.synapse_linked_services : v.parameters]
}
output "synapse_linked_services_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_linked_services"
  value       = [for k, v in azurerm_synapse_linked_service.synapse_linked_services : v.synapse_workspace_id]
}
output "synapse_linked_services_type" {
  description = "List of type values across all synapse_linked_services"
  value       = [for k, v in azurerm_synapse_linked_service.synapse_linked_services : v.type]
}
output "synapse_linked_services_type_properties_json" {
  description = "List of type_properties_json values across all synapse_linked_services"
  value       = [for k, v in azurerm_synapse_linked_service.synapse_linked_services : v.type_properties_json]
}

