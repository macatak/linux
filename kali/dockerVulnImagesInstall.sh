#!/usr/bin/bash

# vuln docker images

# OWASP Juice Shop
# https://hub.docker.com/r/bkimminich/juice-shop
# run cmd
# docker run --rm -p 3000:3000 bkimminich/juice-shop
# access - http://localhost:3000

# latest 
# docker pull bkimminich/juice-shop
docker pull bkimminich/juice-shop:v14.5.1

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

# ??? unknown database error - 2021 bug (https://github.com/raesene/bWAPP/issues/14) ???
# latest container is 7 years old
# bWapp
# https://github.com/raesene/bWAPP
# run cmd
# docker run -d -p 80:80 raesene/bwapp
# access - http://localhost