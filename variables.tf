variable "service_dependencies" {
  description = <<EOT
Map of service_dependencies, attributes below
Optional:
    - dependency (block):
        - dependent_service (optional, block):
            - id (required)
            - type (required)
        - supporting_service (optional, block):
            - id (required)
            - type (required)
        - type (optional)
EOT

  type = map(object({
    dependency = optional(list(object({
      dependent_service = optional(list(object({
        id   = string
        type = string
      })))
      supporting_service = optional(list(object({
        id   = string
        type = string
      })))
      type = optional(string)
    })))
  }))
}

