FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package
FROM openjdk:17
WORKDIR /app
COPY --from=build /app/target/untitled-1.0-SNAPSHOT.jar app.jar
CMD ["java", "-jar", "app.jar"]
