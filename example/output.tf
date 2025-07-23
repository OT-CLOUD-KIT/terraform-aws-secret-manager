output "secret_arn" {
  description = "ARN of the created secret"
  value       = module.secret.secret_arn
}

output "secret_name" {
  description = "Name of the secret"
  value       = module.secret.secret_name
}

output "used_for_service" {
  description = "Service using the secret"
  value       = module.secret.used_for_service
}
