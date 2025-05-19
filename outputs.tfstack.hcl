output "map_to_list_keys" {
  type        = string
  description = "functions"
  value       = component.ssm.output.map_output
}
