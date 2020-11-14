locals {
  aks_cluster_name    = "aks-${local.resource_group_name}"
  location            = "centralus"
  resource_group_name = "helm3-upgrade"
}

resource "random_pet" "primary" {}