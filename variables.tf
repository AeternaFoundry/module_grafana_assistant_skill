variable "assistant_skills" {
  description = <<EOT
Map of assistant_skills, attributes below
Required:
    - body
    - name
    - scope
Optional:
    - command_name
    - context_items
    - include_in_knowledgebase
    - allowed_tools (block):
        - integration_id (required)
        - tool_name (required)
EOT

  type = map(object({
    body                     = string
    name                     = string
    scope                    = string
    command_name             = optional(string)
    context_items            = optional(string)
    include_in_knowledgebase = optional(bool)
    allowed_tools = optional(list(object({
      integration_id = string
      tool_name      = string
    })))
  }))
}

