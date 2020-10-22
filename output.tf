output "secret_name" {
  description = "Name of secret manager secret"
  value       = aws_secretsmanager_secret.secret.name
}
