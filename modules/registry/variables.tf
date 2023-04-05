variable "type" {
  description = "Registry type (HUB / V1 / V2 / ENGINE / AWS / GCR)."
  type        = string
  default     = "AWS"

  validation {
    condition     = can(regex("^HUB$|^V1$|^V2$|^ENGINE$|^AWS$|^GCR$", var.type))
    error_message = "Err: invalid env, must be one of HUB | V1 | V2 | ENGINE | AWS | GCR."
  }
}

variable "region" {
  description = "region of the registry"
  type        = string
  default     = "ap-southeast-1"
}

variable "prefix" {
  description = "Prefix for the registry"
  type        = string
  default     = "aws"
}

variable "assume_role_arn" {
  description = "Assume Role ARN Provide by AquaSec Team"
  type        = list(string)
  default     = []
}
