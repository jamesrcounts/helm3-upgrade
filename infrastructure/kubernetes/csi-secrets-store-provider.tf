resource "helm_release" "secrets_store_provider" {
  name       = "keyvault-secrets"
  repository = "https://raw.githubusercontent.com/Azure/secrets-store-csi-driver-provider-azure/master/charts"
  chart      = "csi-secrets-store-provider-azure"
}