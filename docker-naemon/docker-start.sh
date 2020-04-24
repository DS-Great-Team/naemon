#!/bin/bash

VAR_DIR=$(mkdir -p $HOME/naemon.d)

docker build -t naemon .
docker run --name naemon -d --env 'EMAIL_SENDER=daniel.gomez.amaran@gmail.com' --volume $VAR_DIR:/etc/naemon/conf.d -p 80:80 naemon
