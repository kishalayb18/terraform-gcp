resource "google_sql_database_instance" "default" {
  name             = "gcp-db-instance"
  database_version = "POSTGRES_14"
  region           = var.region

  settings {
    tier = "db-f1-micro"

    backup_configuration {
      enabled = false
    }

    ip_configuration {
      authorized_networks {
        name  = "mypremises"
        value = "203.0.113.0/24"
      }
    }
  }
}

resource "google_sql_user" "default" {
  name     = "kishalay"
  instance = google_sql_database_instance.default.name
  password = "kishalay_gcp_db"
}

resource "google_sql_database" "default" {
  name     = "cloud-db"
  instance = google_sql_database_instance.default.name
}