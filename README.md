# msel-jeff-aws-sandbox

This is a simple sandbox setup for Jeff using Terraform.  It's used for learning AWS and, hopefully, Terraform as well.

Right now this achieves the following:
- Creates a VPC with 10.0.0.0/16 ip addresses
- Creates a Subnet for 10.0.0.0/24 that assigns public ip addresses
- Creates and Internet Gateway and a default route
