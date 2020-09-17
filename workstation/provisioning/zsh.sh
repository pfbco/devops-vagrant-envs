#!/usr/bin/env bash

# ZSH
echo -e "\n> Change shell to ZSH..." 
dnf install zsh util-linux-user -y
chsh -s $(which zsh) vagrant

# oh-my-zsh
echo -e "\n> Install oh-my-sh and custom plugins..."
sudo -u vagrant sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-/home/vagrant/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-/home/vagrant/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp /vagrant/provisioning/zshrc.zsh-template /home/vagrant/.zshrc