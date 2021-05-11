terraform {
  backend "s3" {
    bucket = "terraformback0101"
    key    = "tfstate/jenkins-pipeline.tfstate"
    region = "us-east-1"
  }
}