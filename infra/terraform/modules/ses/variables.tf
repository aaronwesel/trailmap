variable "name_prefix" {
  type = string
}

variable "enable_ses" {
  description = "Create SES identity/config-set placeholders (still DO NOT apply before production apply is authorized)"
  type        = bool
  default     = true
}

variable "domain_name" {
  description = "Domain to verify for SES sending (placeholder before production apply is authorized)"
  type        = string
  default     = ""
}

variable "from_email" {
  description = "Verified FROM email placeholder (must match SES identity)"
  type        = string
  default     = ""
}

variable "tags" {
  type    = map(string)
  default = {}
}
