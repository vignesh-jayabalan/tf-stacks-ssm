# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  type    = string
  default = "us-east-1"
}

# variable "default_tags" {
#   description = "A map of default tags to apply to all AWS resources"
#   type        = map(string)
#   # ephemeral   = true
# }

# variable "identity_token" {
#   type      = string
#   ephemeral = true
# }

# variable "role_arn" {
#   type = string
# }

variable "access_key" {
  description = "AWS access key"
  type        = string
  sensitive   = true
  ephemeral   = true
}

variable "secret_key" {
  description = "AWS sensitive secret key."
  type        = string
  sensitive   = true
  ephemeral   = true
}

variable "session_token" {
  description = "AWS session token."
  type        = string
  sensitive   = true
  ephemeral   = true
}
