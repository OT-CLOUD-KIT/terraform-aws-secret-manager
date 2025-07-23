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



variable "bu" {
  description = "Business unit name (e.g., BP, GURUKU). Max 6 characters."
  type        = string
  default     = "BP"

  validation {
    condition     = length(var.bu) <= 10
    error_message = "The business unit name must be less than or equal to 6 characters."
  }
}

variable "program" {
  description = "Name of the program (e.g., OT, BP)."
  type        = string
  default     = "OT"
}

variable "app" {
  description = "Application name (e.g., network, shared). Max 6 characters."
  type        = string
  default     = "database"

  validation {
    condition     = length(var.app) <= 10
    error_message = "The app name must be less than or equal to 6 characters."
  }
}


variable "env" {
  description = "Environment code: 'd' (dev), 'p' (prod), 'q' (qa), 's' (stage), 'g' (global)."
  type        = string
  default     = "p"

  validation {
    condition     = contains(["d", "p", "q", "s", "g"], var.env)
    error_message = "env must be one of 'd', 'p', 'q', 's', 'g'."
  }
}

variable "team" {
  description = "Team email responsible for the application (e.g., digitalops@gehealthcare.com)."
  type        = string
  default     = "infra"
}

variable "region" {
  description = "AWS region (e.g., us-east-1, ap-south-1)."
  type        = string
  default     = "us-east-1"
}

