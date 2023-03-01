terraform {
  required_providers {
    artifactory = {
      source  = "registry.terraform.io/jfrog/artifactory"
      version = "6.22.3"
    }
  }
}

# Configure the Artifactory provider
provider "artifactory" {
  url           = "https://gouravrepo.jfrog.io/artifactory"
  access_token  = "cmVmdGtuOjAxOjE3MDkyNDUwMDU6WnBkVmM0SUpRVVR4bWlMUklUcVFhTU80STZ2"
}

# Create a new repository
resource "artifactory_local_pypi_repository" "pypi-libs" {
  key             = "pypi-libs"
  repo_layout_ref = "simple-default"
  description     = "A pypi repository for python packages"
}