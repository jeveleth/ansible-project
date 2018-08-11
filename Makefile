create-host:
	docker-compose up -d

create-group:
	ansible-playbook playbook.yml --tags add-group

create-users:
	ansible-playbook playbook.yml --tags add-users

clean-docker:
	docker-compose down
	docker rmi -f $(shell docker images -q)

add-keys:
	ansible-playbook playbook.yml --tags add-keys

revoke-keys:
	ansible-playbook playbook.yml --tags revoke-keys

do-it-all: create-host create-group create-users add-keys revoke-keys 