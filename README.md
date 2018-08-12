## An ansible playbook

This project contains an ansible playbook that:

* creates Unix user accounts
* adds SSH keys of your developers to give them access to machines and
* removes SSH keys from your developers to revoke access to those machines

This assumes make, docker, and ansible are installed on the local machine.

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