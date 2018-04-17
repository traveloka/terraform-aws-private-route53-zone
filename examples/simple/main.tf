module "test" {
  source = "../.."

  name           = "fpr.traveloka.com"
  main_vpc       = "vpc-12345678"
  secondary_vpcs = ["vpc-fedbca09", "vpc-abcdef12"]

  environment    = "production"
  product_domain = "fpr"
}
