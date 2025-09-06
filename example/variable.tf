variable "secret_name" {
  description = "Name of the secret"
  type        = string
}

variable "secret_description" {
  description = "Description for the secret"
  type        = string
}

variable "kms_key_id" {
  description = "KMS Key ARN used to encrypt the secret"
  type        = string
}

variable "used_for_service" {
  description = "Service that uses this secret (e.g., RDS, Redshift)"
  type        = string
}

variable "recovery_window_in_days" {
  description = "Number of days to retain secret after deletion"
  type        = number
  default     = 7
}

variable "secret_string" {
  description = "A map of secret values like username, password, host, etc."
  type        = map(string)
}

variable "enabled_rotation_secret" {
  description = "Enable secret rotation"
  type        = bool
  default     = false
}

variable "rotation_lambda_arn" {
  description = "ARN of the Lambda function to use for rotation"
  type        = string
  default     = null
}

variable "automatically_after_days" {
  description = "Number of days after which to rotate the secret"
  type        = number
  default     = 30
}

variable "tags" {
  description = "Additional tags for the secret"
  type        = map(string)
  default     = {}
}

variable "owner" {
 type = string
 default = "opstree"
}

variable "env" {
  type = string
  default = "dev"
}

variable "app" {
  type = string
  default = "otcloud-kit"
}

variable "region" {
  type = string
  default = "us-east-1"
  
}