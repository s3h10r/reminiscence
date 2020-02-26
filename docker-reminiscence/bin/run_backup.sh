#!/bin/bash -vx
# backups some data of our db

if [ "$EUID" -ne 0 ]
  then echo "Please runme as root"
  exit -1
fi

TS=$(date +%m%d%y%H%M%S)
APP_DIR="/usr/src/reminiscence"
${APP_DIR}/manage.py dumpdata --format json --indent 4 pages > ${APP_DIR}/backup/dumpdata.pages.${TS}.json
