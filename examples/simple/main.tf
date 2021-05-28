module "test" {
  source = "../.."

  name               = "fpr.traveloka.com"
  default_vpc_region = "ap-southeast-1"
  main_vpc           = "vpc-12345678" # main vpc associated with own services from it's own account
  environment        = "production"
  product_domain     = "fpr"
}
