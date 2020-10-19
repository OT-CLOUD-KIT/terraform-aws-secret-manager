variable "secret_name" {
    description = "Name of secret manager"
    type = string
}

variable "secret_description" {
    description = "Description for secret manager"
    type = string
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}


variable "secret_string" {
  description = "key-value input for secret manager"
  type = map(string)
#  default = {
#    "key1": "value1",
#    "key2": "value2"
#  }
}
