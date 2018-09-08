FROM openjdk:8
EXPOSE 8085:8085
COPY target/demo-0.0.1-SNAPSHOT.jar demo.jar
ENTRYPOINT ["java","-jar","demo.jar"]

