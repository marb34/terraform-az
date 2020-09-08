# Create a resource group
resource "azurerm_resource_group" "Terraform-test" {
  name     = "Terraform-MARB"
  location = "East US 2"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "VN1" {
  name                = "TerraformVN1"
  resource_group_name = azurerm_resource_group.Terraform-test.name
  location            = azurerm_resource_group.Terraform-test.location
  address_space       = ["10.10.0.0/16"]
}

# Create a Subnet based on VNet receintly created
resource "azurerm_subnet" "SubN1" {
  name                 = "Subnet1"
  resource_group_name  = azurerm_resource_group.Terraform-test.name
  virtual_network_name = azurerm_virtual_network.VN1.name
  address_prefix       = "10.10.10.0/24"
}
