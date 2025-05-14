# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Source environment secrets from your HCP Terraform variable set
store "varset" "terra_tokens" {
  id       = "varset-B4tF7wet7KYcNafR"
  category = "terraform"
}

store "varset" "tokens" {
  id       = "varset-RYjcHNRHFgCA5gQH"
  category = "env"
}

deployment "dev" {
  inputs = {
    regions       = ["us-east-1"]
    access_key    = store.varset.tokens.AWS_ACCESS_KEY_ID
    secret_key    = store.varset.tokens.AWS_SECRET_ACCESS_KEY
    session_token = store.varset.tokens.AWS_SESSION_TOKEN
    default_tags  = store.varset.terra_tokens.dt
  }
}
