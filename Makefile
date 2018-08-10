create-users:
	ansible-playbook --ask-become-pass playbook.yml --tags add-users

add-keys:
	ansible-playbook --ask-become-pass playbook.yml --tags add-keys

revoke-keys:
	ansible-playbook --ask-become-pass playbook.yml --tags revoke-keys
