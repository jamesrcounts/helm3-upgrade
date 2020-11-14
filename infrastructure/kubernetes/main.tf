locals {
  aks_cluster_name = "aks-${local.project}"
  project          = "helm3-upgrade"
}


resource "random_pet" "primary" {}

data "azurerm_client_config" "current" {}
