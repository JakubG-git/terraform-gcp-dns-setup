output "region" {
  value       = var.gcp_region
  description = "Region"
}

output "zone" {
  value       = var.gcp_zone
  description = "Zone" 
}

output "Child_DNS_Zone_NAME" {
  value       = google_dns_managed_zone.child_zone.name
  description = "Child DNS Zone"
}

output "Child_DNS_Zone_DNS_Name" {
  value       = google_dns_managed_zone.child_zone.dns_name
  description = "Child DNS Zone DNS Name"
}
