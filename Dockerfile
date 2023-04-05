FROM openjdk:11-jdk-slim

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT exec java $JAVA_OPTS -Djavax.net.ssl.trustStorePassword=changeit -Djava.security.egd=file:/dev/./urandom -jar app.jar
