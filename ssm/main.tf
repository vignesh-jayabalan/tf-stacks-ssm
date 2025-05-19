resource "local_file" "foo" {
  content  = join(",", [for key, value in local.default_tags : "${key}=${value}"])
  filename = "${path.module}/foo.bar"
}

locals {
  default_tags = {
    "name-1" = "value-1"
    "name-2" = "value-2"
    "name-3" = "value-3"
  }
}

variable "default_tags" {
  description = "A map of default tags to apply to all AWS resources"
  type        = map(string)
  ephemeral   = true
  default = {
    "name" = "value"
  }
}
