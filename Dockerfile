FROM openjdk:8-jdk-alpine
EXPOSE 8080
COPY target/spring-boot-hello-0.0.1-SNAPSHOT.jar spring-boot-hello.jar
ENTRYPOINT ["java","-jar","spring-boot-hello.jar"]

