## Description

An Ansible setup for my personal vps. Includes: 

- NGINX
- Heihachi Tekken 8 Discord Bot
- Firefly III Personal Finance Manager
- TODO: MTVSRS school proj
- TODO: Mokujin Tekken 7 Discord Bot
- TODO: Portfolio site

## Quick Start

```
sudo dnf update -y
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf install -y git vim epel-release gh mosh
git clone https://github.com/davay/hetzner-setup.git ~/repos/hetzner-setup
sudo dnf install ansible -y
ansible-galaxy collection install community.docker
ansible-playbook ~/repos/hetzner-setup/playbooks/firewalld.yml
ansible-playbook ~/repos/hetzner-setup/playbooks/nginx.yml -e "aws_access_key=YOUR_ACCESS_KEY aws_secret_key=YOUR_SECRET_KEY"
ansible-playbook ~/repos/hetzner-setup/playbooks/heihachi.yml
ansible-playbook ~/repos/hetzner-setup/playbooks/firefly.yml
```

## Ports

| Port | App     |
| ---- | ------- |
| 80   | NGINX   |
| 443  | NGINX   |
| 8080 | Firefly |
