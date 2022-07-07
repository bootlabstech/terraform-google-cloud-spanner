resource "google_spanner_instance" "instance" {
  name          = var.instance_id
  project       = var.project_id
  config        = var.config
  display_name  = var.instance_name
  num_nodes     = var.num_nodes
  force_destroy = var.force_destroy
}

resource "google_spanner_database" "database" {
  project             = var.project_id
  instance            = google_spanner_instance.instance.name
  name                = var.database_name
  deletion_protection = var.deletion_protection
}

