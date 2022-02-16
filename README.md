# Ansible Playbook.

# Prerequisites

This playbook needs The comminuty docker plugin in order to work, to install the plugin in your local ansible host you just need to run the following command.

ansible-galaxy collection install community.docker

Make sure to have the files python-script.sh and install.yaml in the same directory.

# This Ansible Playbook will Install:

- NGINX
- PSSQL
- A Python Script that prints on the index page.

# After running the script you should have

A Application running on port 80.
A PSSQL DB Running on Port 5432 with the credentials admin:admin

