
required_providers {
  # aws = {
  #   source  = "hashicorp/aws"
  #   version = "~> 5.23.0"
  # }
  local = {
    source  = "hashicorp/local"
    version = "~> 2.2.3"
  }
}

# provider "aws" "configurations" {
#   config {
#     region = var.region

#     access_key = var.access_key
#     secret_key = var.secret_key
#     token      = var.session_token
#   }
# }

provider "local" "configurations" {
}
