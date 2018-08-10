Task:
Using configuration management of your choice (Puppet, Chef, Ansible, etc):
* create a module/cookbook to:
    ** create Unix user accounts 
    ** add SSH keys of your developers to give them access and
    ** remove SSH keys from your developers to revoke it 
    ** on production machines so they can help in troubleshooting and figuring out root cause of bugs. 

    Is ansible being installed on a specific server?
    // Going to use docker container to mimic the remote (and host?) machines
// Assumes hosts file with the following hosts configured:
