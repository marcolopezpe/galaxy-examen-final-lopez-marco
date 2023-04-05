FROM amazoncorretto:11.0.17

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT exec java $JAVA_OPTS -jar app.jar
