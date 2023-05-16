#!/usr/bin/bash

# vuln docker images

# OWASP Juice Shop
# https://hub.docker.com/r/bkimminich/juice-shop
# run cmd
# docker run --rm -p 3000:3000 bkimminich/juice-shop
# access - http://localhost:3000

# latest 
docker pull bkimminich/juice-shop
# docker pull bkimminich/juice-shop:v14.5.1

# DVWA 
# https://hub.docker.com/r/vulnerables/web-dvwa
# run
# docker run --rm -p 80:80 vulnerables/web-dvwa
# access - http://localhost 

# latest
docker pull vulnerables/web-dvwa:latest
# docker pull vulnerables/web-dvwa:1.9


# BodgeIT
# - https://github.com/psiinon/bodgeit
# docker run --rm -p 8080:8080  psiinon/bodgeit
# access -  http://localhost:8080/bodgeit

# latest
docker pull securecodebox/bodgeit
# docker pull securecodebox/bodgeit:master
