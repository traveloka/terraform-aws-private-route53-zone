module "test" {
  source = "../.."

  name               = "fpr.traveloka.com"
  default_vpc_region = "ap-southeast-1"

  vpc_ids = [
    {
      "vpc_id" = "vpc-12345678" # main vpc associated with own services from it's own account
    },
    {
      "vpc_id" = "vpc-fedbca09", # vpc from AWS account A
    },
    {
      "vpc_id"     = "vpc-abcdef12", # vpc from AWS account B
      "vpc_region" = "us-east-1"
    }

  ]

  environment    = "production"
  product_domain = "fpr"
}
