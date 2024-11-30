terraform {
  backend "gcs" {
    bucket = "terraform-cloudplay-bucket"
    prefix = "terraform/state"
  }
}