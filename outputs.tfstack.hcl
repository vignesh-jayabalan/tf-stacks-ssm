output "map_to_list_keys" {
  type        = string
  description = "functions"
  value       = component.ssm.map_output
}
