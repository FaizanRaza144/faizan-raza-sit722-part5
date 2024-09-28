resource "azurerm_postgresql_server" "example" {
  name                = "my-db2236"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku_name            = "B_Gen5_1" # Choose your SKU
  storage_mb          = 5120       # Adjust storage

  administrator_login          = "postgresadmin"
  administrator_login_password = "Password123!"

  version = "11"

  ssl_enforcement_enabled = true
  auto_grow_enabled       = true
  backup_retention_days   = 7
  geo_redundant_backup_enabled = false
}

resource "azurerm_postgresql_database" "exampledb" {
  name                = "mydatabase"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_postgresql_server.example.name
  charset             = "UTF8"
  collation           = "English_United States.1252"
}
