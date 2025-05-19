output "map_to_list_keys" {
  type        = map(string)
  description = "functions"
  value       = component.ssm.map_output
}
