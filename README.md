# terraform-gcp-dns-setup

## Overview
Creating a reachable DNS zone in GCP is a multi-step process. This module will:
- Create a DNS zone.
- Create a DNS NS record in the parent zone. This is required for the DNS zone to be reachable.
- Output created DNS zone name and DNS_record_name.