#!/usr/bin/env bash

echo "Instalando SOC OpenSource..."
mkdir traefik
touch /traefik/acme.json && chmod 600 /traefik/acme.json
echo "Ficheros de Traefik creados"
mkdir -p misp-db
docker run -it --rm -v ${PWD}/misp-db:/var/lib/mysql harvarditsecurity/misp /init-db
echo "Base de Datos de MISP Creada"
sudo sysctl -w vm.max_map_count=262144
docker-compose up -d mongo
docker-compose up -d mongo-init-replica
docker-compose up -d rocketchat
echo "Mongo DB creado"
mv /thehive_conf/application.sample /thehive_conf/application.conf
mv /misp_data/apache.conf.sample /misp_data/apache.conf
echo "Acuerdate de setear los Secretos en SecretHub ;)"
echo "Instaladas las dependencias..."