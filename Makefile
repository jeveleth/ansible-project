create-host:
	docker-compose up -d

create-group:
	ansible-playbook playbook.yml --tags add-group

create-users:
	ansible-playbook playbook.yml --tags add-users

add-keys:
	ansible-playbook playbook.yml --tags add-keys

revoke-keys:
	ansible-playbook playbook.yml --tags revoke-keys

create-group-and-users: create-group create-users

do-it-all: create-host create-group create-users add-keys revoke-keys

clean-docker:
	docker-compose down
	docker rmi -f $(shell docker images -q)