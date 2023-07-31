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
  count               = var.no_of_databases
  name                = var.name_of_databases[count.index]
  deletion_protection = var.deletion_protection
  encryption_config {
    kms_key_name = var.kms_key_name
  }

}

