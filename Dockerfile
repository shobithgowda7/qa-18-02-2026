FROM openjdk:27-ea-jdk-slim
COPY target/app.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
