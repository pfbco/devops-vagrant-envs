#!/usr/bin/env bash

echo `cat /etc/centos-release`
echo "Kernel: $(uname -r)"

# Disable SELinux
echo -ne "\n> Disable SELinux..."
sed -i 's/\(^SELINUX=\).*/\1disabled/' /etc/selinux/config && echo 'OK' || echo 'Failed'

# Upgrade system
echo -e "\n> Update system..."
dnf update -y

echo -e "\n> Install core packages required for tools"
dnf install epel-release -y && rpm -q epel-release
dnf install gcc make perl kernel-devel kernel-headers bzip2 dkms -y
dnf install nano zip wget git -y

# ZSH
echo -e "\n> Change shell to ZSH..." 
dnf install zsh util-linux-user -y
chsh -s $(which zsh) vagrant