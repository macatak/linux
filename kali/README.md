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


