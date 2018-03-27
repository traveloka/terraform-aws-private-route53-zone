variable "name" {
  type        = "string"
  description = "name of the hosted zone"
}

variable "comment" {
  default     = ""
  description = "comment for the hosted zone"
}

variable "vpc_ids" {
  type        = "list"
  description = "list of VPC that will be associated with this zone"
}

variable "force_destroy" {
  default     = false
  description = "whether to destroy all records inside if the hosted zone is deleted"
}

variable "tags" {
  default     = {}
  description = "tags map for the hoosted zone"
}
