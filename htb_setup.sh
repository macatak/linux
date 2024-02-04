#!/usr/bin/bash

# script to setup HTB machines
# 1 - Add the IP address to UFW
# 2 - Add the machine to /etc/hosts
#   - format htb_<machine name> 
#   - Example htb_jerry
# 3 - create a subfolder in the HTB folder
# 4 - cd into that folder and run an nmap scan

# target folder
# !!!!! needs to be changed for any other folder
htb_dir="/home/bikeride/machines"
# check and make sure that folder exists
if [[ ! -d $htb_dir ]]
  then
    echo "Please change the variable htb_dir in the script (line 13)"
    echo "$htb_dir does not exist"
    exit
fi

# check the number of arguments
# expecting an IP and a name
if [ "$#" != 2 ]
  then 
    echo "please enter an IP address followed by a name"
    echo "format <IP> <name>"
    echo "example : ./htb_setup 10.10.10.3 lame"
    exit
fi

# !!!!!!  must be run as root !!!!!!
# check for root and exit if not
if [ "$EUID" -ne 0 ]
  then echo "Script needs to be run as root"
  exit
  else echo "Running as root"
fi

# set the variables
ip=$1
machine_name=$2

# check and make sure the 1st argument is a valid IP
if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]
  then
    echo "valid ip"
  else
    echo "Make sure the 1st argument is a valid IP address"
    exit  
fi

# checks are all done, set it up

# create the directory
mkdir $htb_dir/$machine_name

# ufw
ufw allow from $ip

# add to /etc/hosts
# this could look better since it adds it in the IPv6 section
# but it works
echo "$ip htb_$machine_name" >> /etc/hosts

# cd into the folder and run a base nmap scan with file outputs
cd $htb_dir/$machine_name
nmap -p- -T4 -v -sC -sV -oA nmap $ip

echo "done"
echo "to fix permissions change the user:group otherwise"
echo "everything is owned by root"
echo "so fix the line below and uncomment it
# sudo chown -R user:group $htb_dir
