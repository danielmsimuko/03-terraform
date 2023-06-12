## the providers
provider "azurerm" {
  features {
     resource_group { 
       prevent_deletion_if_contains_resources = false 
     }
  }
}

resource "azurerm_resource_group" "terra-rg" {
  name     = "my-resource-group"
  location = "uk south"
}

resource "azurerm_virtual_network" "terra-vn" {
  name                = "my-virtual-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.terra-rg.location
  resource_group_name = azurerm_resource_group.terra-rg.name
}

resource "azurerm_subnet" "terra-subn" {
  name                 = "my-subnet"
  resource_group_name  = azurerm_resource_group.terra-rg.name
  virtual_network_name = azurerm_virtual_network.terra-vn.name
  address_prefixes     = ["10.0.0.0/24"]
}

resource "azurerm_network_security_group" "terra-nsg" {
  name                = "my-nsg"
  location            = azurerm_resource_group.terra-rg.location
  resource_group_name = azurerm_resource_group.terra-rg.name

  security_rule {
    name                       = "SSH"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_public_ip" "terra-ip" {
  name                = "my-public-ip"
  location            = azurerm_resource_group.terra-rg.location
  resource_group_name = azurerm_resource_group.terra-rg.name
  allocation_method   = "Dynamic"
}

resource "azurerm_network_interface" "terra-nic" {
  name                = "my-nic"
  location            = azurerm_resource_group.terra-rg.location
  resource_group_name = azurerm_resource_group.terra-rg.name

  ip_configuration {
    name                          = "my-nic-ip"
    subnet_id                     = azurerm_subnet.terra-subn.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.terra-ip.id
  }
}

resource "azurerm_linux_virtual_machine" "terra-vm" {
  name                  = "my-vm"
  resource_group_name   = azurerm_resource_group.terra-rg.name
  location              = azurerm_resource_group.terra-rg.location
  size                  = "Standard_DS2_v2"
  admin_username        = "daniel"
  network_interface_ids = [azurerm_network_interface.terra-nic.id]

  admin_ssh_key {
    username   = "daniel"
    public_key = file("terra-key.txt") # Path to your public SSH key
  }

  os_disk {
    name                 = "terra-os-disk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
