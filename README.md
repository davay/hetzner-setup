## Description

An Ansible setup for my personal vps. Sets up personal tools like mosh and deploys these services:

- NGINX
- Heihachi Tekken 8 Discord Bot
- jobs.devinl.im

Notes: 
- Cert renewal should be automatic (cron job runs every Monday at 3 AM, but only renews if cert is expiring within 30 days), but there's a script to manually renew certs too. 
- Hetzner is an IAM user and it has R53 access key.
- Some parts of this readme is outdated, TODO.

## Quick Start

```
sudo dnf update -y
sudo dnf install -y git 
git clone https://github.com/davay/hetzner-setup.git
cd hetzner-setup
./setup.sh
```


```
ansible-galaxy collection install community.docker
ansible-playbook ~/repos/hetzner-setup/playbooks/firewalld.yml
ansible-playbook ~/repos/hetzner-setup/playbooks/nginx.yml -e "aws_access_key=YOUR_ACCESS_KEY aws_secret_key=YOUR_SECRET_KEY"
ansible-playbook ~/repos/hetzner-setup/playbooks/heihachi.yml
```

## Ports

| Port            | Service     |
| --------------- | ------- |
| 80/tcp          | NGINX   |
| 443/tcp         | NGINX   |
| 5173/tcp        | jobs.devinl.im |
| 60000-61000/udp | MOSH    | 
