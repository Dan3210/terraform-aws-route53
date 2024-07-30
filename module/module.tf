module "route_53" {
  source = "../"

  name = "example.com"
  type = "A"
  env = "dev"
}