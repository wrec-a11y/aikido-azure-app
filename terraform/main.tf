
resource "azurerm_storage_account" "demo" {
  name                     = "aikidodemostorage123"
  resource_group_name      = "demo-resource-group"
  location                 = "uksouth"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  # INTENTIONALLY INSECURE: allow public blob access
  allow_nested_items_to_be_public = true

  # INTENTIONALLY INSECURE: allow insecure transport
  enable_https_traffic_only = false

  min_tls_version = "TLS1_0"
}
