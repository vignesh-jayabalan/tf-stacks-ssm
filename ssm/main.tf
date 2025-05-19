resource "local_file" "foo" {
  content  = join(",", [for key, value in var.default_tags : "${key}=${value}"])
  filename = "${path.module}/foo.bar"
}

variable "default_tags" {
  description = "A map of default tags to apply to all AWS resources"
  type        = map(string)
  default = {
    "name" = "value"
  }
}
