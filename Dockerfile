FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=build/libs/demo-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} demo-springboot.jar
ENTRYPOINT ["java", "-jar", "/demo-springboot.jar"]
