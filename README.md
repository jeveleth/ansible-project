Task:
Using configuration management of your choice (Puppet, Chef, Ansible, etc):
* create a module/cookbook to:
    ** create Unix user accounts 
    ** add SSH keys of your developers to give them access and
    ** remove SSH keys from your developers to revoke it 
    ** on production machines so they can help in troubleshooting and figuring out root cause of bugs. 


    // Builds local docker container to mimic the remote machines
To run:
    make create-host # build the host

<!-- created dummy keys for the purposes of testing. these should *not* be used in a production environment -->
    ssh-keygen -t rsa -b 4096 -C "dev1@test.com"

    TODO: 

/Users/joshuaeveleth/dev/kong-project/public_keys