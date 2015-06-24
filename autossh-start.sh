#!/bin/bash
 
autossh -M 0 \
 -g \
 -N \
 -o StrictHostKeyChecking=no \
 -o ServerAliveInterval=5 \
 -o ServerAliveCountMax=1 \
 -i /root/.ssh/id_rsa \
 -R *:1234:localhost:8080 \
 root@docker-sshd-ip-address -p 2222
