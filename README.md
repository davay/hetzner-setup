```
sudo dnf update -y
sudo dnf install -y git vim epel-release
git clone https://github.com/davay/hetzner-setup.git ~/repos/
sudo dnf install ansible -y
ansible-playbook ~/repos/playbooks/heihachi.yml
```
