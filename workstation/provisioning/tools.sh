HOME_BIN=~/bin
[ ! -d "$HOME_BIN" ] && mkdir $HOME_BIN && echo "PATH=\"$HOME_BIN:\$PATH\"" >> ~/.zshrc

# AWS CLI
echo -e "\n> AWS CLI"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -q -o awscliv2.zip && sudo ./aws/install
rm -rf aws && rm awscliv2.zip

# Terraform/terragrunt
echo -e "\n> Terraform"
curl "https://releases.hashicorp.com/terraform/0.13.1/terraform_0.13.1_linux_amd64.zip" -o "terraform.zip"
unzip -q -o terraform.zip && mv terraform $HOME_BIN/ && rm terraform.zip
curl "https://github.com/gruntwork-io/terragrunt/releases/download/v0.24.1/terragrunt_linux_amd64" -o $HOME_BIN/terragrunt

# Packer
echo -e "\n> Packer"
curl "https://releases.hashicorp.com/packer/1.6.2/packer_1.6.2_linux_amd64.zip" -o "packer.zip"
unzip -o packer.zip && mv packer $HOME_BIN/ && rm packer.zip

# Ansible
echo -e "\n> Ansible"
sudo dnf install ansible -y

# AppCenter
echo -e "\n> AppCenter CLI"
npm install -g appcenter-cli