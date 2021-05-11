terraform {
  backend "s3" {
    bucket = "terraformback0101"
    key    = "tfstate/vpc-module.tfstate"
    region = "us-east-1"
  }
}