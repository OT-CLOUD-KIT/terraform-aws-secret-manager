
module "standard_tags" {
  source = "git@github.com:OT-CLOUD-KIT/terraform-aws-standard-tagging.git?ref=dev"

  bu      = var.bu
  program = var.program
  app     = var.app
  team    = var.team
  region  = var.region
  env     = var.env
}

module "naming" {
  source   = "git@github.com:OT-CLOUD-KIT/terraform-aws-naming.git?ref=dev"
  bu       = var.bu
  env      = var.env
  app      = var.app
  resource = var.resource
}


module "secret" {
  source = "../" 

  secret_name        = var.secret_name
  secret_description = var.secret_description
  kms_key_id         = var.kms_key_id
  used_for_service   = var.used_for_service

  recovery_window_in_days = var.recovery_window_in_days
 bu                         = var.bu
  program                    = var.program
  team                       = var.team
  app                        = var.app
  env                        = var.env
  region                     = var.region
  secret_string = var.secret_string

  enabled_rotation_secret  = var.enabled_rotation_secret
  rotation_lambda_arn      = var.rotation_lambda_arn
  automatically_after_days = var.automatically_after_days

}
