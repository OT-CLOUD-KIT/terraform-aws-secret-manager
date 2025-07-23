resource "aws_secretsmanager_secret" "secret" {
  name        = "${local.base_name}-${var.secret_name}"
  description = var.secret_description
  kms_key_id  = var.kms_key_id

  recovery_window_in_days = var.recovery_window_in_days

  tags = merge(
    {
      Name            = "${local.base_name}-${var.secret_name}"
      PROVISIONER     = "Terraform"
      Used_For_Service = var.used_for_service
    },
    local.common_tags
  )
}

resource "aws_secretsmanager_secret_version" "secret_version" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = jsonencode(var.secret_string)
}

resource "aws_secretsmanager_secret_rotation" "rotation" {
  count = var.enabled_rotation_secret ? 1 : 0

  secret_id           = aws_secretsmanager_secret.secret.id
  rotation_lambda_arn = var.rotation_lambda_arn

  rotation_rules {
    automatically_after_days = var.automatically_after_days
  }
}
