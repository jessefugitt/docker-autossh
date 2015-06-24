# autossh
#
# VERSION               0.0.1

FROM ubuntu:14.04
MAINTAINER Jesse Fugitt

# This copies over a private key which is referenced by autossh-start.sh; comment out to disable
RUN mkdir -p /root/.ssh
ADD id_rsa /root/.ssh/id_rsa
RUN chmod 700 /root/.ssh/id_rsa

RUN apt-get update && apt-get install -y autossh

# This copies over the autossh start script
ADD autossh-start.sh /autossh-start.sh
RUN chmod +x /autossh-start.sh

CMD ["/autossh-start.sh"]

