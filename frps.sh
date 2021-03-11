#!/bin/sh bash

docker -v || bash -c "wget -qO- https://get.docker.com/ | sh"
curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
apt-get install -y wget unzip
wget https://github.com/ydn2856/frp/archive/main.zip
unzip -a ./main.zip
cd ./frp-main
docker-compose up -d
