#!/bin/sh
mvn clean package && docker build -t com.harshajayamanna.javaeesample/javaeesample .
docker rm -f javaeesample || true && docker run -d -p 9080:9080 -p 9443:9443 --name javaeesample com.harshajayamanna.javaeesample/javaeesample