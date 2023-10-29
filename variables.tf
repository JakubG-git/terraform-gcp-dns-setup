#Variable declarations for the GCP website
#Fill those in with your own values in the .tfvars file
variable "gcp_cred_file" {
    description = "location of the GCP credentials file"
}
variable "gcp_project_id" {
    description = "google cloud project id"
}
variable "gcp_region" {
    description = "choosen gcp region"
    default = "europe-north1"
}
variable "gcp_zone" {
    description = "choosen gcp zone"
    default = "europe-north1-a"
}

variable "gcp_parent_dns_zone" {
    description = "choosen gcp dns zone"
}

variable "gcp_child_dns_zone" {
    description = "choosen gcp dns child zone"
}
  