resource "aws_route53_zone" "main" {
  name          = "${var.name}"
  vpc_id        = "${var.main_vpc}"
  comment       = "${var.description}"
  force_destroy = "${var.force_destroy}"

  tags = {
    "Name"          = "${var.name}"
    "ProductDomain" = "${var.product_domain}"
    "Environment"   = "${var.environment}"
    "Description"   = "${var.description}"
  }
}

resource "aws_route53_zone_association" "secondary" {
  count   = "${length(var.associated_vpcs)}"
  zone_id = "${aws_route53_zone.main.zone_id}"
  vpc_id  = "${var.associated_vpcs[count.index]}"
}
