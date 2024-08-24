# Use an official base image for Java
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/my-app.jar /app/my-app.jar

# Expose the port the application will run on
EXPOSE 8080
# Adds the devops-integration.jar file from the target directory to the root directory (/) of the container.
ADD target/devops-integration.jar devops-integration.jar

# Define the command to run the application
ENTRYPOINT ["java", "-jar", "/devops-integration.jar"]
