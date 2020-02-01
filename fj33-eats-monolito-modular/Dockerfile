FROM openjdk:8-jre-alpine

WORKDIR /app

EXPOSE 8080

ADD eats-application/target/eats-application.jar .

CMD ["java", "-jar", "eats-application.jar"]