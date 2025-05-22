terraform {
  backend "s3" {
    bucket = "tife-123"
    key    = "nginx/terraform.tfstate"
    region = "eu-north-1"
  }
}