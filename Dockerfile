FROM openjdk:16-alpine
ENV USER=admin
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]