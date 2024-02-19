FROM maven:3.8.6-openjdk-11 AS build
COPY pom.xml .
COPY src /src
RUN mvn clean package
ENTRYPOINT ["java","-jar","target/sampleapp-1.0-SNAPSHOT.jar"]
