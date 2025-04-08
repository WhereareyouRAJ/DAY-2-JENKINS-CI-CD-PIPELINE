# Stage 1: Build the app using Maven
FROM maven:3.9.4-eclipse-temurin-17 AS build

WORKDIR /app

COPY pom.xml . 
COPY src ./src

RUN mvn clean package -Dskiptests

# Stage 2: Run the app using JDK

From eclipse-temurin:17-jdk

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

EXPOSE 8081

CMD ["java", "-jar", "app.jar"]
