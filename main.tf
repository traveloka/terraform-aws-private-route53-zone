resource "aws_route53_zone" "main" {
  name   = "${var.name}"
  vpc_id = "${var.vpc_ids[0]}"
}

resource "aws_route53_zone_association" "secondary" {
  count   = "${length(var.vpc_ids) - 1}"
  zone_id = "${aws_route53_zone.main.zone_id}"
  vpc_id  = "${var.vpc_ids[count.index + 1]}"
}
