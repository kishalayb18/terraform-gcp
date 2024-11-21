terraform {
  backend "gcs" {
    bucket = "terraform-default-bucket"
    prefix = "tf/state"
  }
}