module "test" {
  source = "../"

  name    = "example.domain.private"
  vpc_ids = ["vpc-12345678", "abcdef12"]
}
