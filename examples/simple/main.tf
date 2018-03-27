module "test" {
  source = "../.."

  name            = "example.domain.private"
  main_vpc        = "vpc-12345678"
  associated_vpcs = ["vpc-fedbca09", "vpc-abcdef12"]
}
