#Save for easier access
data "google_dns_managed_zone" "parent_zone" {
    name = var.gcp_parent_dns_zone
}
#Creating a child DNS zone
resource "google_dns_managed_zone" "child_zone" {
  name = "${var.gcp_child_dns_zone}"
  dns_name = "${var.gcp_child_dns_zone}.${data.google_dns_managed_zone.parent_zone.dns_name}"
  description = "Child DNS zone: ${var.gcp_child_dns_zone} with parent ${var.gcp_parent_dns_zone}"
  visibility = "public"
}
#Creating a NS record in the parent zone for the child zone so that the child zone can be reached
resource "google_dns_record_set" "child-ns-record" {
  name = "${var.gcp_child_dns_zone}.${data.google_dns_managed_zone.parent_zone.dns_name}"
  type = "NS"
  ttl = 300
  managed_zone = data.google_dns_managed_zone.parent_zone.name

  rrdatas = google_dns_managed_zone.child_zone.name_servers
}