## Kali Setup

#### (because I always forget the partioning part)

  - Select "Manual" and click Continue
  - Select the drive you configured
  - Click Yes on Partition disks
  - Click on FREE space and select Continue on right bottom of the screen
  - Select | Create a new partition and click on Continue
  - Enter partition size 
  - Select Logical and select Continue
  - Click on Continue
  - Mount point will be set to / (root) but needs to be changed 

Partitions  
  * /boot – boots your OS (contains system OS kernel) - 1GB
  * /home – partition for user data - 20GB
  * /tmp – for temporary files as a name suggests - 5GB
  * Give /swap 4GB or don't worry about it 
      * Have to enter /swap manually for the name
      * NOT REALLY NEEDED
  * /var – holds content for various applications - 20GB
      * Or half of what is left
  * / (root) – OS partition - whatever is left


## Post Install Steps =====

==== Update/Upgrade ====  
<code>
sudo apt update && sudo apt -y upgrade && sudo apt -y dist-upgrade && sudo apt -y autoremove
</code>  

==== DNS Utilities ====  
<code>
sudo apt install -y dnsutils 
</code>  

==== Chromium ====  
<code>
sudo apt install -y chromium
</code>  

==== Firewall ====  

<code>sudo apt install -y ufw  
sudo ufw enable
</code>  

  * Check Status  
  <code>sudo ufw status verbose</code>  
  
  * Add an IP  
  <code>sudo ufw allow from <ip Address></code>  

==== VS Code  ====  

Install snapd
<code>sudo apt install -y snapd</code>

Start the service
<code>sudo systemctl start snapd.service</code>

Install VS Code  
<code>sudo apt install -y curl gpg software-properties-common apt-transport-https</code>  
<code>curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -</code>  
<code>echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list</code>  
<code>sudo apt update && sudo apt install code</code>  
  
==== Sublime ====
  
  
<code>wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-text</code>
  
 ==== Feroxbuster ====
  
 Like Gobuster but more powerful  
  <code>sudo apt install feroxbuster</code>  
  Example  
  <code>feroxbuster -u http://10.10.82.232</code>  
  
  Info  
  https://github.com/epi052/feroxbuster  
  https://epi052.github.io/feroxbuster-docs/docs/examples/detect-directory-listing/
  
