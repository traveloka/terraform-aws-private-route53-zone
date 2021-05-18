locals {
  description = "Private zone for ${var.name}"
  managed_by  = "terraform"
}

resource "aws_route53_zone" "main" {
  name = var.name
  vpc {
    vpc_id     = var.main_vpc
    vpc_region = var.default_vpc_region
  }
  dynamic "vpc" {
    for_each = var.additional_vpc_ids
    content {
      vpc_id     = vpc.value["vpc_id"]
      vpc_region = lookup(vpc.value, "vpc_region", var.default_vpc_region)
    }
  }

  comment       = local.description
  force_destroy = var.force_destroy

  tags = {
    "Name"          = var.name
    "ProductDomain" = var.product_domain
    "Environment"   = var.environment
    "Description"   = local.description
    "ManagedBy"     = local.managed_by
  }
}
