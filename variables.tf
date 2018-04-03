variable "name" {
  type        = "string"
  description = "name of the hosted zone"
}

variable "description" {
  type        = "string"
  description = "Description of the hosted zone"
}

variable "product_domain" {
  type        = "string"
  description = "Abbreviation of the product domain this Route 53 zone belongs to"
}

variable "environment" {
  type        = "string"
  description = "Environment this Route 53 zone belongs to"
}

variable "main_vpc" {
  type        = "string"
  description = "main VPC ID that will be associated with this hosted zone"
}

variable "associated_vpcs" {
  type        = "list"
  default     = []
  description = "list of VPCs that will also be associated with this zone"
}

variable "force_destroy" {
  default     = false
  description = "whether to destroy all records inside if the hosted zone is deleted"
}

variable "tags" {
  default     = {}
  type        = "map"
  description = "tags map for the hoosted zone"
}
