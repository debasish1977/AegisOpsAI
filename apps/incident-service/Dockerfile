FROM eclipse-temurin:21-jre
WORKDIR /app
COPY target/incident-service-0.1.0-SNAPSHOT.jar app.jar
USER 10001
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
