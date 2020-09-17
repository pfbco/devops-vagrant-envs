#!/usr/bin/env zsh

# Node by nvm
echo -e "\n> Install Node..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.nvm/nvm.sh
echo 'source ~/.nvm/nvm.sh' >> .zshrc
nvm install --lts
node -v

# Ruby by RVM 
echo -e "\n> RVM"
curl -sSL https://get.rvm.io | bash 
source ~/.rvm/scripts/rvm
rvm install 2.6.5
ruby -v && gem -v

# Java, gradle
sudo dnf install -y java-1.8.0-openjdk java-1.8.0-devel
wget https://services.gradle.org/distributions/gradle-6.3-bin.zip -P /tmp
java -version