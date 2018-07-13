# msel-jeff-aws-sandbox

This is a simple sandbox setup for Jeff using Terraform.  It's used for learning AWS and, hopefully, Terraform as well.

Right now this achieves the following:
- Creates a VPC with 10.0.0.0/16 ip addresses
- Creates a Subnet for 10.0.0.0/24 that assigns public ip addresses
- Creates and Internet Gateway and a default route

## Instructions
1. Download terraform (https://www.terraform.io)
2. Clone this repo `git clone https://github.com/jhu-sheridan-libraries/msel-jeff-aws-sandbox.git)`
3. Install awscli `pip install -r requirements.txt`
4. Configure aws cli with your AWS IAM credentials
5. **Important** Create a profile called "jhuadmin" in awscli using your credentials
6. Run terraform plan `terraform plan -out jeff.plan`, this will analyze the environment and figure out what needs to be created
7. Run terraform apply `terraform apply jeff.plan`, this will create the resources 