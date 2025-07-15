terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.30.0"
    }
  }

  backend "gcs" {
    bucket = "spotify-portal-public-demo-terraform"
    prefix = "spotify-portal-public-demo-gke"
  }
}

provider "google" {
  project = "spotify-portal-public-demo"
  region  = "europe-west1"
}

resource "google_container_cluster" "spotify-portal-public-demo-gke" {
  name = "spotify-portal-public-demo-gke"

  location         = "europe-west1"
  enable_autopilot = true

  deletion_protection = true
}
