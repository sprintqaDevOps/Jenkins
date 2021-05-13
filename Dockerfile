FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY ./sprint/target/java-maven-app-*.war /usr/app/
WORKDIR /usr/app

CMD java -war java-maven-app-*.war
