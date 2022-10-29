# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket    = "jaxbucket1"
    key       = "beauxjax"
    region    = "us-east-1"
    profile   = "default"
  }
}