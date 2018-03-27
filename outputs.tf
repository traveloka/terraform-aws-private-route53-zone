output "zone_id" {
  value       = "${aws_route53_zone.main.zone_id}"
  description = "hosted zone id"
}
