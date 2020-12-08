#!/usr/bin/env bash

secrethub run --template secrets.env -- docker-compose stop
secrethub run --template secrets.env -- docker-compose pull
secrethub run --template secrets.env -- docker-compose up -d
docker image prune -f
