variable "instance_id" {
  type        = string
  description = "A unique identifier for the instance, which cannot be changed after the instance is created. The name must be between 6 and 30 characters in length."
}
variable "project_id" {
  type        = string
  description = "The ID of the project in which the resource belongs."
}
variable "config" {
  type        = string
  description = "The name of the instance's configuration similar but not quite the same as a region"
}
variable "instance_name" {
  type        = string
  description = "The descriptive name for this instance as it appears in UIs. Must be unique per project and between 4 and 30 characters in length."
}
variable "num_nodes" {
  type        = number
  description = "The number of nodes allocated to this instance"
}
variable "force_destroy" {
  type        = bool
  description = "When deleting a spanner instance, this boolean option will delete all backups of this instance."
}
variable "database_name" {
  type        = string
  description = "The name of database"
}
variable "deletion_protection" {
  type        = bool
  description = "Whether or not to allow Terraform to destroy the instance"
}
variable "kms_key_name" {
  type        = string
  description = "Name of the KMS key used to encrypt the instance."
}
variable "no_of_databases" {
  type        = number
  description = "Number of the databases in the spanner."
}
variable "name_of_databases" {
  type        = string
  description = "Name of the databases in the spanner"
}

