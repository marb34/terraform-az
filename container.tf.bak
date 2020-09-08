resource "azurerm_container_group" "Container1" {
  name                = "example-continst"
  location            = azurerm_resource_group.Terraform-test.location
  resource_group_name = azurerm_resource_group.Terraform-test.name
  ip_address_type     = "public"
  dns_name_label      = "Cont-label"
  os_type             = "Linux"

  container {
    name   = "hello-world"
    image  = "microsoft/aci-helloworld:latest"
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 443
      protocol = "TCP"
    }
  }

  container {
    name   = "sidecar"
    image  = "microsoft/aci-tutorial-sidecar"
    cpu    = "0.5"
    memory = "1.5"
  }

  tags = {
    environment = "testing"
  }
}
