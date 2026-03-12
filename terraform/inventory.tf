resource "local_file" "ansible_inventory" {
  content = <<EOF
[webapp]
${azurerm_public_ip.public_ip.ip_address} ansible_user=azureuser ansible_ssh_private_key_file=../terraform/private_key.pem

[localhost]
127.0.0.1 ansible_connection=local
EOF

  filename = "../ansible/inventory"
}
