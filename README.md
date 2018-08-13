## An ansible playbook

This project contains an ansible playbook that:

* creates Unix user accounts
* adds SSH keys of your developers to give them access to machines and
* removes SSH keys from your developers to revoke access to those machines

This assumes make, docker, python, and ansible are installed on the local machine.
This was created on OSX 10.13.6 with the following software setup:

* ansible 2.6.2
* python 2.7.15
* docker 18.06.0-ce (client and engine)

It also assumes that you have a /private/etc/ansible/hosts file installed with the following content:

       [targets]
       nginx-one-host ansible_port=8080 ansible_host=nginx-one ansible_connection=docker
### To run:

1. Build a local docker container to mimic the production box

        make create-host # build the host

2. Add group and users:

        make create-group-and-users

3. Add keys:

        make add-keys

4. Revoke keys:

        make revoke-keys

5. Clean up environment:

        make clean-docker

6. Do the whole shebang:

        make do-it-all

**NB**: I created dummy keys for the purposes of testing. These should **not** be used in a production environment.
