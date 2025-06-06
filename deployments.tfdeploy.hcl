store "varset" "tags" {
  id       = "varset-3uvR7pkrockKWEK8"
  category = "terraform"
}

store "varset" "tokens" {
  id       = "varset-qftQm1YoYm36F6zw"
  category = "env"
}

deployment "dev" {
  inputs = {
    region        = "us-east-1"
    access_key    = store.varset.tokens.AWS_ACCESS_KEY_ID
    secret_key    = store.varset.tokens.AWS_SECRET_ACCESS_KEY
    session_token = store.varset.tokens.AWS_SESSION_TOKEN
    default_tags  = store.varset.tags.default_tags
  }
}
