#!/bin/sh

docker compose up -d
docker compose exec server ssh-keygen  -t rsa -b 4096 -f /root/.ssh/id_rsa -N ""
docker compose cp server:/root/.ssh/id_rsa.pub ./server/id_rsa.pub

docker compose cp ./server/id_rsa.pub dmz:/root/.ssh/authorized_keys
docker compose exec dmz chmod 600 /root/.ssh/authorized_keys

docker compose exec server /root/reverse_tunnel.sh
