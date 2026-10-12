output "service_dependencies_id" {
  description = "Map of id values across all service_dependencies, keyed the same as var.service_dependencies except keys with no id are omitted"
  value       = { for k, v in pagerduty_service_dependency.service_dependencies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_dependencies_dependency" {
  description = "Map of dependency values across all service_dependencies, keyed the same as var.service_dependencies except keys with no dependency are omitted"
  value       = { for k, v in pagerduty_service_dependency.service_dependencies : k => v.dependency if v.dependency != null && length(v.dependency) > 0 }
}

