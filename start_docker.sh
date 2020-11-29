#!/bin/bash

docker build -t locust-testes .

docker run --rm -p 8089:8089 --cpu-quota=300000 --memory="3000M" --name	 stesstest --volume $PWD/locustfile/locustfile.py:/mnt/locust/locustfile.py -e LOCUSTFILE_PATH=/mnt/locust/locustfile.py locust-testes:latest -f /mnt/locust/locustfile.py -H https://locust.io/