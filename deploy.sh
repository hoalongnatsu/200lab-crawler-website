#!/bin/bash
IMAGE=$1
SHORT_SHA=$2

sed -i "s|$IMAGE.*|$IMAGE:$SHORT_SHA|g" docker-compose-server.yaml
docker compose -f docker-compose-server.yaml up -d