locals {
  base_name = "${var.bu}-${var.program}-${var.app}-${var.env}"

  common_tags = {
    "BusinessUnit" = var.bu
    "Program"      = var.program
    "Application"  = var.app
    "Environment"  = var.env
    "Team"         = var.team
     "region"       = var.region
    "ManagedBy"    = "Terraform"
  }
}
