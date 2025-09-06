locals {
  base_name = "${var.env}-${var.app}"

  common_tags = {
   env = var.env
   app = var.app
   owner = var.owner
  }
}
