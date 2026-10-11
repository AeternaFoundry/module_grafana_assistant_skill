output "assistant_skills_id" {
  description = "Map of id values across all assistant_skills, keyed the same as var.assistant_skills except keys with no id are omitted"
  value       = { for k, v in grafana_assistant_skill.assistant_skills : k => v.id if v.id != null && length(v.id) > 0 }
}
output "assistant_skills_allowed_tools" {
  description = "Map of allowed_tools values across all assistant_skills, keyed the same as var.assistant_skills except keys with no allowed_tools are omitted"
  value       = { for k, v in grafana_assistant_skill.assistant_skills : k => v.allowed_tools if v.allowed_tools != null && length(v.allowed_tools) > 0 }
}
output "assistant_skills_body" {
  description = "Map of body values across all assistant_skills, keyed the same as var.assistant_skills except keys with no body are omitted"
  value       = { for k, v in grafana_assistant_skill.assistant_skills : k => v.body if v.body != null && length(v.body) > 0 }
}
output "assistant_skills_command_name" {
  description = "Map of command_name values across all assistant_skills, keyed the same as var.assistant_skills except keys with no command_name are omitted"
  value       = { for k, v in grafana_assistant_skill.assistant_skills : k => v.command_name if v.command_name != null && length(v.command_name) > 0 }
}
output "assistant_skills_context_items" {
  description = "Map of context_items values across all assistant_skills, keyed the same as var.assistant_skills except keys with no context_items are omitted"
  value       = { for k, v in grafana_assistant_skill.assistant_skills : k => v.context_items if v.context_items != null && length(v.context_items) > 0 }
}
output "assistant_skills_include_in_knowledgebase" {
  description = "Map of include_in_knowledgebase values across all assistant_skills, keyed the same as var.assistant_skills except keys with no include_in_knowledgebase are omitted"
  value       = { for k, v in grafana_assistant_skill.assistant_skills : k => v.include_in_knowledgebase if v.include_in_knowledgebase != null }
}
output "assistant_skills_name" {
  description = "Map of name values across all assistant_skills, keyed the same as var.assistant_skills except keys with no name are omitted"
  value       = { for k, v in grafana_assistant_skill.assistant_skills : k => v.name if v.name != null && length(v.name) > 0 }
}
output "assistant_skills_scope" {
  description = "Map of scope values across all assistant_skills, keyed the same as var.assistant_skills except keys with no scope are omitted"
  value       = { for k, v in grafana_assistant_skill.assistant_skills : k => v.scope if v.scope != null && length(v.scope) > 0 }
}

