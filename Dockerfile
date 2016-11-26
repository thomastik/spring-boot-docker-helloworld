# Use maven image to build project
FROM maven:3-jdk-8

WORKDIR /app

# Add POM and source
ADD pom.xml /app/pom.xml
ADD src /app/src

# Build the app
RUN ["mvn", "clean", "package"]

# Run the app
RUN bash -c 'touch /app/target/hello-world-0.0.1-SNAPSHOT.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app/target/hello-world-0.0.1-SNAPSHOT.jar"]
