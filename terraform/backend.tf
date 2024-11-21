terraform {
  backend "gcs" {
    bucket = "terraform-default-bucket"
    prefix = "terraform/state"
  }
}