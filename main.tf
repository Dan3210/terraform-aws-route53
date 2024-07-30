resource "aws_route_53" "primary" {
  name    = "example.com"
}

resource "aws_route53_zone" "dev" {
  name = "${var.name}"
  
  tags = {
    Environment = "env"
  }
}

resource "aws_route_53_record" "dev-ns" {
  zone_id = aws_route_53.primary.zone_id
  name    = "example.com"
  type    = "A"
  ttl     = "300"
  records = aws_route53_zone.dev.name_servers
}