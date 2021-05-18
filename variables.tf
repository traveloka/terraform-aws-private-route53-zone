variable "name" {
  type        = string
  description = "Name of the hosted zone"
}

variable "product_domain" {
  type        = string
  description = "Abbreviation of the product domain this Route 53 zone belongs to"
}

variable "environment" {
  type        = string
  description = "Environment this Route 53 zone belongs to"
}

variable "main_vpc" {
  type        = string
  description = "Main VPC ID that will be associated with this hosted zone"
}

variable "additional_vpc_ids" {
  type        = list(map(string))
  description = "List of additional VPC ID's that will be associated with this hosted zone"
  default     = []
}

variable "force_destroy" {
  type        = bool
  default     = false
  description = "Whether to destroy all records inside if the hosted zone is deleted"
}

variable "default_vpc_region" {
  type        = string
  description = "Default region of lists of the associated VPC's."
}
