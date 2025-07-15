output "gke_cluster_name" {
  value       = google_container_cluster.spotify-portal-public-demo-gke.name
  description = "GKE Cluster Name"
}

output "gke_cluster_endpoint" {
  value       = google_container_cluster.spotify-portal-public-demo-gke.endpoint
  description = "GKE Cluster Endpoint"
}
