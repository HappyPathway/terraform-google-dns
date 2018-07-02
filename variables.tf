variable "domain" {
  default = "alphonso.tv"
}

variable "google_project" {
  default = "titanium-flash-726"
}

variable "google_project_id" {
  default = "927763580433"
}

variable "dns_managed_zone" {
  default = "main-domain"
}

variable "gc_region" {
  default = "us-east1"
}

variable "gc_zone" {
  default = "us-east1-b"
}

variable "static_hosts" {
  type = "list"
  default = []
}
variable "hostname" {}
variable "hosts" {}