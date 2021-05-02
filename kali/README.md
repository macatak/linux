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
sudo apt update && sudo apt upgrade && sudo apt dist-upgrade && sudo apt autoremove
</code>

==== DNS Utilities ====
<code>
sudo apt install dnsutils 
</code>

==== Chromium ====
<code>
sudo apt install chromium
</code>

==== Firewall ====
<code>sudo apt install ufw
sudo ufw enable
</code>
  * Check Status<code>
sudo ufw status verbose
</code>
  * Add an IP<code>
sudo ufw allow from <ip Address>
</code>

==== VS Code  ====
Install snapd
<code>sudo apt install snapd</code>

Start the service
<code>sudo systemctl start snapd.service</code>

Install VS Code
<code>sudo snap install code --classic</code>
