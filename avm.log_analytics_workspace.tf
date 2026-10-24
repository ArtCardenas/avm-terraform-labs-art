module "log_analytics_workspace" {
  source  = "Azure/avm-res-operationalinsights-workspace/azurerm"
  version = "0.4.2"

  name                = local.resource_names.log_analytics_workspace_name
  location            = var.location
  # create in PowerShell environment variable $env:TF_VAR_location = "swedencentral"
  resource_group_name = module.resource_group.name
  tags                = var.tags
}
