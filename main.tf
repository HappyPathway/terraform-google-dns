data "google_dns_managed_zone" "dns_zone" {
  name = "${var.dns_managed_zone}"
}

resource "google_dns_record_set" "alpha" {
  name = "${var.hostname}.${data.google_dns_managed_zone.dns_zone.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = "${data.google_dns_managed_zone.dns_zone.name}"

  rrdatas = ["${compact(concat(split(",", var.hosts), var.static_hosts))}"]
}
