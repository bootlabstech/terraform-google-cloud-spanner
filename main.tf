resource "google_spanner_instance" "instance" {
  name          = var.instance_id
  project       = var.project_id
  config        = var.config
  display_name  = var.instance_name
  num_nodes     = var.num_nodes
  force_destroy = var.force_destroy
  labels        = length(keys(var.labels)) < 0 ? null : var.labels
}

resource "google_spanner_database" "database" {
  project             = var.project_id
  instance            = google_spanner_instance.instance.name
  name                = var.database_name
  deletion_protection = var.deletion_protection
  database_dialect    = var.database_types

  encryption_config {
    kms_key_name = var.kms_key_name
  }
}

