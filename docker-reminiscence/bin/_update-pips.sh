#!/bin/bash -vx
# autoupgrades youtube-packes to latest version 
# - on every container (re-)start
# - TODO: daily via cronjob
pip install --upgrade youtube-dl

