#!/bin/sh

docker compose up -d
docker compose exec server ssh-keygen -f /root/.ssh/id_rsa -N ""
docker compose cp server:/root/.ssh/id_rsa.pub ./server/id_rsa.pub

docker compose cp ./server/id_rsa.pub dmz:/root/.ssh/authorized_keys
