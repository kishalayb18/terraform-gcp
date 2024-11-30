variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}
variable "gcs_bucket" {
  type = string
}

variable "vpc_name" {
  description = "vpc name"
}

variable "subnet_names" {
  type = list(string)
}

variable "public_subnet_cidr_ranges" {
  type = list(string)
}

variable "private_subnet_cidr_ranges" {
  type = list(string)
}

variable "create_db" {
  type = bool
}

variable "database_username" {
  type = string
}

variable "database_password" {
  type = string
  sensitive = true
}
