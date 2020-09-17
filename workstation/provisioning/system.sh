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
dnf install -y \
    gcc make perl kernel-devel kernel-headers bzip2 dkms \
    nano zip wget git
