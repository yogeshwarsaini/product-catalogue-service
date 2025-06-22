# Stage 1: Build
FROM maven:3.8.5-openjdk-11 AS build
WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

# Stage 2: Run
FROM openjdk:11-jre-slim
WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

EXPOSE 9090
ENTRYPOINT ["java", "-jar", "app.jar"]
