provider "aws" {
    region = "ap-south-1"
}


resource "aws_secretsmanager_secret" "secret" {
  name = var.secretname
  description = var.secretdescription
  tags = merge(
    {
      PROVISIONER = "Terraform",

    },
    var.tags,
  )
}

resource "aws_secretsmanager_secret_version" "secret" {
  secret_id = aws_secretsmanager_secret.secret.id
  secret_string = <<EOF
  {
    "key1": "value1",
    "key2": "value2"
  }
  EOF
}
