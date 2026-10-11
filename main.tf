resource "grafana_assistant_skill" "assistant_skills" {
  for_each = var.assistant_skills

  body                     = each.value.body
  name                     = each.value.name
  scope                    = each.value.scope
  command_name             = each.value.command_name
  context_items            = each.value.context_items
  include_in_knowledgebase = each.value.include_in_knowledgebase

  dynamic "allowed_tools" {
    for_each = each.value.allowed_tools != null ? each.value.allowed_tools : []
    content {
      integration_id = allowed_tools.value.integration_id
      tool_name      = allowed_tools.value.tool_name
    }
  }
}

