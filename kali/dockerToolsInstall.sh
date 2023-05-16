
# zap
# https://www.zaproxy.org/docs/docker/
# 
# usage
# 'standard' zap.sh script. 
#  zap-x.sh script which first starts xvfb (X virtual frame buffer), allows add-ons that use Selenium (like the Ajax Spider and DOM XSS scanner) to run in a headless environment. Firefox is also installed

# latest
docker pull owasp/zap2docker-stable:latest
# docker pull owasp/zap2docker-stable:2.12.0


# OWASP Nettacker
# https://hub.docker.com/r/owasp/nettacker
# https://owasp.org/www-project-nettacker/

# usage
# docker-compose up -d && docker exec -it nettacker_nettacker_1 /bin/bash
# python nettacker.py -i owasp.org -s -m port_scan
# Results
# https://localhost:5000 or https://nettacker-api.z3r0d4y.com:5000/

# latest
docker pull owasp/nettacker:latest
# docker pull owasp/nettacker:0.0.3.5