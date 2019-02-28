locals {
  description = "Private zone for ${var.name}"
}

resource "aws_route53_zone" "main" {
  name          = "${var.name}"
  vpc {
    vpc_id = "${var.main_vpc}"
  }
  comment       = "${local.description}"
  force_destroy = "${var.force_destroy}"

  tags = {
    "Name"          = "${var.name}"
    "ProductDomain" = "${var.product_domain}"
    "Environment"   = "${var.environment}"
    "Description"   = "${local.description}"
    "ManagedBy"     = "Terraform"
  }
}

resource "aws_route53_zone_association" "secondary" {
  count   = "${length(var.secondary_vpcs)}"
  zone_id = "${aws_route53_zone.main.zone_id}"
  vpc_id  = "${var.secondary_vpcs[count.index]}"
}
