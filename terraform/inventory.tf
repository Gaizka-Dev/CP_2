resource "local_file" "ansible_inventory" {
  content = <<EOF
[webapp]
${azurerm_public_ip.public_ip.ip_address} ansible_user=azureuser ansible_ssh_private_key_file=../terraform/private_key.pem

[localhost]
127.0.0.1 ansible_connection=local
EOF

  filename = "../ansible/inventory"
}

resource "local_file" "ansible_secrets" {
  content = <<EOF
acr_login_server: ${azurerm_container_registry.acr.login_server}
acr_username: ${azurerm_container_registry.acr.admin_username}
acr_password: ${azurerm_container_registry.acr.admin_password}
EOF

  filename = "../ansible/secrets.yml"
}