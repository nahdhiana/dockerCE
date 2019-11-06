# https://docs.docker.com/engine/installation/linux/docker-ce/debian/

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
echo "deb https://download.docker.com/linux/debian stretch stable" >> /etc/apt/sources.list 
sudo apt update
sudo apt install docker-ce
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker

systemctl start docker
# test that this thing is on
docker run hello-world
