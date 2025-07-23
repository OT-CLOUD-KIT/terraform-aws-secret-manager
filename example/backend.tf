terraform {
  backend "s3" {
    bucket = "ot-cloud-kit-bucket"
    key    = "ot/module/secret-manager/terraform.tfstate"
    region = "us-east-1"

  }
}