resource "tfe_workspace" "apps" {
  name         = "${local.resource_group_name}-apps"
  organization = "jamesrcounts"
}

resource "tfe_variable" "arm_client_id" {
  category     = "env"
  description  = "Service Principal Application Id"
  key          = "ARM_CLIENT_ID"
  value        = data.azurerm_client_config.current.client_id
  workspace_id = tfe_workspace.apps.id
}



resource "tfe_variable" "arm_subscription_id" {
  category     = "env"
  description  = "Azure Subscription Id"
  key          = "ARM_SUBSCRIPTION_ID"
  value        = data.azurerm_client_config.current.subscription_id
  workspace_id = tfe_workspace.apps.id
}

resource "tfe_variable" "arm_tenant_id" {
  category     = "env"
  description  = "Azure Tenant Id"
  key          = "ARM_TENANT_ID"
  value        = data.azurerm_client_config.current.tenant_id
  workspace_id = tfe_workspace.apps.id
}

data "azurerm_client_config" "current" {}




resource "random_password" "password" {
  length           = 16
  override_special = "_%@"
  special          = true
}

resource "random_uuid" "apps_password_id" {}