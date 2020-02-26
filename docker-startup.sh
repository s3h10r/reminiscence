#!/bin/bash -vx
# (re-)build and start up

# as daemon (detached)
#docker-compose up --build -d

# in foreground (debugging)
docker-compose up --build
