# linux

Needed a place to start keeping Linux info, mainly scripting stuff. Read books, learn things, then forget it all so this is an effort to put snippets and 101 stuff in a place where I can find it


Started with Cybersecurity Ops with Bash


htb_setup.sh - Hack The Box setup script that does the following:
  * Add the IP address to UFW
  * Add the machine to /etc/hosts
    * format htb_MachineName
    * Example htb_blue
  * Create a subfolder in the HTB folder
  * cd into that folder and run an nmap scan
    * nmap -p- -T4 -v -sC -sV -oA nmap 
Also performs some error checking
