
resource "aws_secretsmanager_secret" "example" {
  name = "vjb_ephemeral_test"
}
resource "aws_secretsmanager_secret_version" "example" {
  secret_id                = aws_secretsmanager_secret.example.id
  secret_string_wo         = jsonencode(var.default_tags)
  secret_string_wo_version = 1
}

variable "default_tags" {
  description = "A map of default tags to apply to all AWS resources"
  ephemeral   = true
}
