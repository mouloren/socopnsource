#!/usr/bin/env bash

secrethub run --template secrets.env -- docker-compose down
secrethub run --template secrets.env -- docker-compose up -d
