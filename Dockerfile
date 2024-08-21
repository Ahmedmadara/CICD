# Stage 1: Build the application
FROM maven:3.9.0-eclipse-temurin-17 as build
WORKDIR /app
COPY . .
RUN mvn clean package

# Stage 2: Create the final image
FROM tomcat:10-jdk17
WORKDIR /usr/local/tomcat/webapps
COPY --from=build /app/target/maven-web.war /usr/local/tomcat/webapps/
EXPOSE 8080


