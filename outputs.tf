output "service_dependencies_id" {
  description = "Map of id values across all service_dependencies, keyed the same as var.service_dependencies"
  value       = { for k, v in pagerduty_service_dependency.service_dependencies : k => v.id }
}
output "service_dependencies_dependency" {
  description = "Map of dependency values across all service_dependencies, keyed the same as var.service_dependencies"
  value       = { for k, v in pagerduty_service_dependency.service_dependencies : k => v.dependency }
}

