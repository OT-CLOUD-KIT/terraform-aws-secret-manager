output "secret_name" {
  description = "The name of the created secret"
  value       = aws_secretsmanager_secret.secret.name
}

output "secret_arn" {
  description = "The ARN of the created secret"
  value       = aws_secretsmanager_secret.secret.arn
}

output "used_for_service" {
  description = "The service this secret is used for"
  value       = var.used_for_service
}
