```
sudo dnf update -y
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf install -y git vim epel-release gh
git clone https://github.com/davay/hetzner-setup.git ~/repos/hetzner-setup
sudo dnf install ansible -y
ansible-galaxy collection install community.docker
ansible-playbook ~/repos/hetzner-setup/playbooks/heihachi.yml
ansible-playbook ~/repos/hetzner-setup/playbooks/firefly.yml
```
