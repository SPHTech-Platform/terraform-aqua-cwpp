terraform {
  required_version = ">= 1.3"

  required_providers {
    helm = {
      source  = "hashicorp/aws"
      version = ">= 4.28"
    }

    aquasec = {
      source  = "aquasecurity/aquasec"
      version = ">= 0.8.20"
    }
  }
}
