
module "secret" {
  source = "git@github.com:OT-CLOUD-KIT/terraform-aws-secret-manager.git?ref=Feature" 

  secret_name        = var.secret_name
  secret_description = var.secret_description
  kms_key_id         = var.kms_key_id
  used_for_service   = var.used_for_service

  recovery_window_in_days = var.recovery_window_in_days
 env = var.env
 app = var.app
 owner = var.owner

  secret_string = var.secret_string

  enabled_rotation_secret  = var.enabled_rotation_secret
  rotation_lambda_arn      = var.rotation_lambda_arn
  automatically_after_days = var.automatically_after_days

}
