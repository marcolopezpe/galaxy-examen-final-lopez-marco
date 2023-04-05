FROM openjdk:11-slim

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT exec java $JAVA_OPTS -jar app.jar
