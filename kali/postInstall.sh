# Update/Upgrade 

sudo apt update && sudo apt -y upgrade && sudo apt -y dist-upgrade && sudo apt -y autoremove

# installs
sudo apt install -y dnsutils chromium ufw snapd curl gpg software-properties-common apt-transport-https feroxbuster

sudo systemctl start snapd.service

# add repos for VSCode and Sublime
# vscode
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add 
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
# sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list


# install added repos
sudo apt update && sudo apt install -y code sublime-text


sudo ufw enable
sudo ufw status verbose
# sudo ufw allow from <ip Address>