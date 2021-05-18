module "test" {
  source = "../.."

  name = "fpr.traveloka.com"

  vpc_ids = [
    "vpc-12345678", # main vpc associated with own services from it's own account
    "vpc-fedbca09", # vpc from AWS account A
    "vpc-abcdef12", # vpc from AWS account B
  ]

  environment    = "production"
  product_domain = "fpr"
}
