terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.32"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }

  }
  required_version = ">= 1.5.0"
}
