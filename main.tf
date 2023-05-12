terraform {
  backend "gcs" {
    bucket = "hiro_iac_state_bucket"
  }
}

provider "google" {
  project = "hirotaka-iac-dev"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-c"
}

variable "container_image" {}

resource "google_cloud_run_service" "hello" {
  name     = "hello"
  location = "asia-northeast1"
  template {
    spec {
      containers {
        image = var.container_image
      }
    }
  }
}

resource "google_cloud_run_service_iam_member" "hello" {
  location = google_cloud_run_service.hello.location
  service  = google_cloud_run_service.hello.name
  role     = "roles/run.invoker"
  member   = "allUsers"
}