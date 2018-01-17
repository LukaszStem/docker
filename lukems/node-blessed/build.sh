#!/usr/bin/env bash
set -x -e

#buildnumber=${4-$(date -u +"%y%m%d%H%M")}

docker build -t "$1"/node_blessed:4.4.7 4.4.7
docker build -t "$1"/node_blessed:4.5.0 4.5.0
docker build -t "$1"/node_blessed:4.8.3 4.8.3
docker build -t "$1"/node_blessed:4.8.4 4.8.4
docker build -t "$1"/node_blessed:6.2.2 6.2.2
docker build -t "$1"/node_blessed:6.6.0 6.6.0
docker build -t "$1"/node_blessed:6.9.3 6.9.3
docker build -t "$1"/node_blessed:6.10.3 6.10.3
docker build -t "$1"/node_blessed:6.11.0 6.11.0
docker build -t "$1"/node_blessed:6.11.1 6.11.1
docker build -t "$1"/node_blessed:8.0.0 8.0.0
docker build -t "$1"/node_blessed:8.1.2 8.1.2
docker build -t "$1"/node_blessed:8.1.3 8.1.3
docker build -t "$1"/node_blessed:8.1.4 8.1.4
docker build -t "$1"/node_blessed:8.2.1 8.2.1
docker build -t "$1"/node_blessed:8.8.0 8.8.0
docker build -t "$1"/node_blessed:8.8.1 8.8.1

docker login -u "$2" -p "$3"

docker push "$1"/node_blessed:4.4.7
docker push "$1"/node_blessed:4.5.0
docker push "$1"/node_blessed:4.8.3
docker push "$1"/node_blessed:4.8.4
docker push "$1"/node_blessed:6.2.2
docker push "$1"/node_blessed:6.6.0
docker push "$1"/node_blessed:6.9.3
docker push "$1"/node_blessed:6.10.3
docker push "$1"/node_blessed:6.11.0
docker push "$1"/node_blessed:6.11.1
docker push "$1"/node_blessed:6.11.5
docker push "$1"/node_blessed:8.0.0
docker push "$1"/node_blessed:8.1.2
docker push "$1"/node_blessed:8.1.3
docker push "$1"/node_blessed:8.1.4
docker push "$1"/node_blessed:8.2.1
docker push "$1"/node_blessed:8.8.0
docker push "$1"/node_blessed:8.8.1

docker logout
