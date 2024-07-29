# install yadm 
dnf config-manager --add-repo https://download.opensuse.org/repositories/home:TheLocehiliosan:yadm/Fedora_40/home:TheLocehiliosan:yadm.repo
dnf install yadm

# use yadm to kickstart installation
yadm clone https://github.com/davay/hetzner-setup.git
