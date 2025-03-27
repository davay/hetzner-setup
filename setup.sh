#!/bin/bash

read -rsp "AWS_ACCESS_KEY: " AWS_ACCESS_KEY
echo

read -rsp "AWS_SECRET_KEY: " AWS_SECRET_KEY
echo

sudo dnf install -y ansible
git clone https://github.com/davay/hetzner-setup.git ~/Repos/hetzner-setup

# SUDO IS PASSWORDLESS HERE
ansible-playbook ./playbooks/init.yml
ansible-playbook ./playbooks/firewalld.yml
ansible-playbook ./playbooks/nginx.yml -e "aws_access_key=$AWS_ACCESS_KEY aws_secret_key=$AWS_SECRET_KEY"
# ansible-playbook ./playbooks/heihachi.yml

