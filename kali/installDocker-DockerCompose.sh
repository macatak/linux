sudo apt update && sudo apt -y full-upgrade
# pre reqs
sudo apt install -y curl gnupg2 apt-transport-https software-properties-common ca-certificates

# reboot
reboot

# import key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-archive-keyring.gpg

# add repo & update
echo "deb [arch=amd64] https://download.docker.com/linux/debian bullseye stable" | sudo tee  /etc/apt/sources.list.d/docker.list
sudo apt update

# install 
sudo apt install -y docker-ce docker-ce-cli containerd.io 

# add user to the group for perms
sudo usermod -aG docker $USER

# test it
docker version


# docker-compose install
sudo apt install -y docker-compose
# test it
docker-compose version

reboot

docker run --rm -it  hello-world