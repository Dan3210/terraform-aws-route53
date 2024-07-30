variable "name" {
  type = string
  default = ""
  description = "replace default value with domain name"
}

variable "type" {
  type = string
    default = ""
    description = "replace default value with record type"
}

variable "env" {
  type = string
  default = ""
  description = "subdomain env name"

}
