terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region     = "${var.region}"
}

module "server" {
  source = "./server"

  num_webs         = "${var.num_webs}"
  identity         = "${var.identity}"
  ami              = "${var.ami}"
  ingress_cidr     = "${var.ingress_cidr}"
  public_key_path  = "${var.public_key_path}"
  private_key_path = "${var.private_key_path}"
}
