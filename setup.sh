#!/bin/bash

read -rsp "Sudo password: " PASS
sudo dnf install -y ansible
git clone https://github.com/davay/hetzner-setup.git ~/Repos/hetzner-setup
echo
(
    export ANSIBLE_BECOME_PASS="$PASS"
    ansible-playbook ./playbooks/init.yml
    ansible-playbook ./playbooks/firewalld.yml
    ansible-playbook ./playbooks/nginx.yml
    ansible-playbook ./playbooks/heihachi.yml
)

