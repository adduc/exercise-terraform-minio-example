terraform {
  required_providers {
    minio = {
      source  = "aminueza/minio"
      version = "1.7.1"
    }
  }
}

// @see https://registry.terraform.io/providers/aminueza/minio/latest/docs
provider "minio" {
  minio_server     = "minio:9000"
  minio_access_key = var.minio_access_key
  minio_secret_key = var.minio_secret_key
}

resource "minio_s3_bucket" "state_terraform_s3" {
  bucket = "test-bucket"
  acl    = "public"
}