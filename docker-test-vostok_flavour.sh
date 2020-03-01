#!/bin/bash -vx
# usage `sudo ./me` 

rm -Rf /tmp/reminiscence
cd /tmp
git clone https://github.com/s3h10r/reminiscence.git
cd reminiscence
git checkout vostok-flavour

docker-compose up --build --force-recreate db-fixme | tee /tmp/docker-test-vostok_flavour.log 

psql -h localhost --dbname postgres -U postgres -p 5432 

#sudo rm -Rf /tmp/reminiscence
