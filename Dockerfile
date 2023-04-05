FROM openjdk:11-jre-slim

ADD target/*.jar app.jar
ADD entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
