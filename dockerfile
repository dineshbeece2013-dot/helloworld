# Use a lightweight Java 21 runtime image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file built by Maven into the container
COPY target/myapp-1.0-SNAPSHOT.jar app.jar

# Expose the port your application runs on (default is usually 8080)
EXPOSE 8081

# Command to execute the application
ENTRYPOINT ["java", "-jar", "app.jar"]
