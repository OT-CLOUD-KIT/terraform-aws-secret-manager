provider "aws" {
    region = "ap-south-1"
}


resource "aws_secretsmanager_secret" "secret" {
  name = var.secret_name
  description = var.secret_description
  tags = merge(
    {
      PROVISIONER = "Terraform",

    },
    var.tags,
  )
}

resource "aws_secretsmanager_secret_version" "secret_version" {
  secret_id = aws_secretsmanager_secret.secret.id
  secret_string = jsonencode(var.secret_string)
}
