#!/bin/sh
mvn clean package && docker build -t org.digam/ims-chat .
docker rm -f ims-chat || true && docker run --rm -d -p 8084:8080 --name ims-chat org.digam/ims-chat