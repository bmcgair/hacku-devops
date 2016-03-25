#!/bin/bash
docker-compose up -d
sleep 5
cd ./sql && ./load-dev.sh
DMIP=`docker-machine ip`
echo "app is available at http://$DMIP"

