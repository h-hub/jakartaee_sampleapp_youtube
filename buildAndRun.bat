@echo off
call mvn clean package
call docker build -t com.harshajayamanna.javaeesample/javaeesample .
call docker rm -f javaeesample
call docker run -d -p 9080:9080 -p 9443:9443 --name javaeesample com.harshajayamanna.javaeesample/javaeesample