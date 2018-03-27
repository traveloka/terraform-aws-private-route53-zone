resource "aws_route53_zone" "main" {
  name          = "${var.name}"
  vpc_id        = "${var.main_vpc}"
  tags          = "${var.tags}"
  comment       = "${var.comment}"
  force_destroy = "${var.force_destroy}"
}

resource "aws_route53_zone_association" "secondary" {
  count   = "${length(var.associated_vpcs)}"
  zone_id = "${aws_route53_zone.main.zone_id}"
  vpc_id  = "${var.associated_vpcs[count.index]}"
}
