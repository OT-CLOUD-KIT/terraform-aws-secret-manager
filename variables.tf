variable "secret_name" {
    description = "Name of secret manager"
    type = string
}

variable "secret_description" {
    description = "Description for secret manager"
    type = string
    default = ""
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}


variable "secret_string" {
  description = "key-value input for secret manager"
  type = map(string)
}

variable "kms_key_id" {
    description = "Encryption key for secret manager"
    type = string
    default = ""
}

variable "rotation_lambda_arn" {
    description = "lambda ARN for rotation of secret manager"
    type = string
    default = ""
}

variable "enabled_rotation_secret" {
    description = "enable/disable to rotate of secret manager keys"
    type = bool
    default = false
}

variable "automatically_after_days" {
    description = "number of days between automatic scheduled rotations"
    type = string
    default = "30"
}
