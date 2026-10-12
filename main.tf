resource "pagerduty_service_dependency" "service_dependencies" {
  for_each = var.service_dependencies


  dynamic "dependency" {
    for_each = each.value.dependency != null ? each.value.dependency : []
    content {
      dynamic "dependent_service" {
        for_each = dependency.value.dependent_service != null ? dependency.value.dependent_service : []
        content {
          id   = dependent_service.value.id
          type = dependent_service.value.type
        }
      }
      dynamic "supporting_service" {
        for_each = dependency.value.supporting_service != null ? dependency.value.supporting_service : []
        content {
          id   = supporting_service.value.id
          type = supporting_service.value.type
        }
      }
      type = dependency.value.type
    }
  }
}

