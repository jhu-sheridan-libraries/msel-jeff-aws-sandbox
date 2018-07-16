provider "aws" {
    region = "us-east-1"
    profile = "jhuadmin"
}

terraform {
    backend "s3" {
        profile = "jhuadmin"
        bucket = "msel-terraform-states"
        region = "us-east-1"
        key = "applicatons/msel-jeff-aws-sandbox/state"
    }
}