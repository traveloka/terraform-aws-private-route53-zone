module "test" {
  source = "../.."

  name           = "fpr.traveloka.com"
  main_vpc       = "vpc-12345678"
  secondary_vpcs = ["vpc-fedbca09", "vpc-abcdef12"]

  description    = "Flight Product route53 hosted zone"
  environment    = "production"
  product_domain = "fpr"
}
