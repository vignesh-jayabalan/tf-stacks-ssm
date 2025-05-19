locals {
  map_var = keys(var.default_tags)
}

variable "default_tags" {
  description = "A map of default tags to apply to all AWS resources"
  type        = map(string)
  default = {
    "name" = "value"
  }
}
