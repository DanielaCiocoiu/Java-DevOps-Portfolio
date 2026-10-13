terraform {
  backend "s3" {
    bucket  = "vprofile-eks-terraform"
    key     = "eks/terraform.tfstate"
    region  = "eu-north-1"
    encrypt = true
  }
}
