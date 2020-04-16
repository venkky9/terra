provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA6BVISBY5JWMDRPAP"
  secret_key = "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"

}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"


  name = "my-vpc"
  cidr = "172.31.0.0/16"

  azs             = ["us-east-2a", "us-east-2b", "us-east-2c"]
  private_subnets = ["172.31.1.0/24", "172.31.2.0/24", "172.31.3.0/24"]
  public_subnets  = ["172.31.101.0/24", "172.31.102.0/24", "172.31.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
