# docker-autossh

###To configure autossh
Edit the autossh-start.sh script
```
docker run -i -t jessefugitt/docker-autossh /bin/bash
vi autossh-start.sh
```
Modify the reverse tunnel and connection lines:
```
 -R *:1234:localhost:8080 \
 root@docker-sshd-ip-address -p 2222
```
where the syntax is (no command with -N and reverse tunnel with -R) and *:docker-sshd-host-port:local-ip-address:local-port root@docker-sshd-ip-address -p 2222

###To run
First, start the running ssh server daemon (see jessefugitt/docker-sshd).  
Then, run docker-autossh.
```
docker run -d jessefugitt/docker-autossh
```

###To modify docker-autossh
```
git clone https://github.com/jessefugitt/docker-autossh.git
edit Dockerfile and autossh-start.sh (and id_rsa)
docker build -t jessefugitt/docker-autossh .
```

###To generate keys
```
ssh-keygen -t rsa -C "your_email@example.com"
cp ~/.ssh/id_rsa id_rsa
```
