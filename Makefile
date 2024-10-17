
get-file-content:
	ansible-playbook playbooks/get_file_content.yml -i hosts/inventory.yml --vault-password-file .vault_password
