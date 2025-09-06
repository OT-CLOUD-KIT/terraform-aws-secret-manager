variable "secret_name" {
  description = "Name of the secret"
  type        = string
  default = "my-secret"
}

variable "secret_description" {
  description = "Description of the secret"
  type        = string
  default     = "Secret for RDS MySQL DB"
}

variable "kms_key_id" {
  description = "KMS key ID for encryption"
  type        = string
  default     = "119bd441-337d-4dfe-bc7f-ffc228833a83"
}

variable "secret_string" {
  description = "Secret content (e.g. credentials in key/value pairs)"
  type = object({
    username = string
    password = string
    engine   = string
    host     = string
    port     = number
    dbname   = string
  })
  default = {
    username = "admin"
  password = "MySecurePass123!"
  engine   = "mysql"
  host     = "database-1.cwtk466o4o6z.us-east-1.rds.amazonaws.com"
  port     = "3306"
  dbname   = "mydb"
  }
}

variable "enabled_rotation_secret" {
  description = "Whether to enable secret rotation"
  type        = bool
  default     = false
}

variable "rotation_lambda_arn" {
  description = "ARN of Lambda function for secret rotation"
  type        = string
  default     = null
}

variable "automatically_after_days" {
  description = "Days after which the secret is automatically rotated"
  type        = number
  default     = 30
}

variable "recovery_window_in_days" {
  description = "Number of days AWS waits before deleting the secret permanently"
  type        = number
  default     = 7
}

variable "used_for_service" {
  description = "Database service the secret is for (e.g. RDS, DocumentDB, Redshift)"
  type        = string
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