# spring-boot-docker-helloworld
This is a 'hello world'-webapp, made with spring boot.

## Build JAR-File with maven
``` bash
mvn clean package
``` 

## Run app with docker
``` bash
docker build -t my-hello-world .
docker run -d -p 8080:8080 my-hello-world
```
