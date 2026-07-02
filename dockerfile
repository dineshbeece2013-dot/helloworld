# Use the official, actively maintained Java 21 image
FROM eclipse-temurin:21-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file built by Maven into the container
COPY target/myapp-1.0-SNAPSHOT.jar app.jar

# Expose the port your application runs on
EXPOSE 8081

# Command to execute the application
ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=8081", "--server.address=0.0.0.0"]
