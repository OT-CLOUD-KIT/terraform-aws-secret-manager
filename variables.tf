variable "secretname" {
    description = "Name of secret manager"
    type = string
    default = ""
}

variable "secretdescription" {
    description = "Description for secret manager"
    type = string
    default = ""
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}
